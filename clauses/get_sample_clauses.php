<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/ 

// This script selects a sample of utterances from the file: for each speaker, it takes a set number (specified in $window) of utterances above and below each quartile, provided these utterances contain a verb.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$window=5;  // The sampling window defines how many utterances will be selected on each side of the quartile utterance

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
//$spdata=get_speaker_data($words);  # siarad
$spdata=get_speakers($words);  # zeledon5
//print_r($spdata);

$directions=array("max"=>"<", "min" => ">");

// Get the 25%, 50% and 75% quartiles
$sql_total=query("select count(*) from $utterances");
$total=pg_fetch_result($sql_total, 0, 0);
$quartiles[]=round($total/4);  // 25%
$quartiles[]=round($total/2); // 50%
$quartiles[]=round($quartiles[0]+$quartiles[1]); // 75%

//foreach ($spdata as $speaker=>$data)  // Loop through the speakers - siarad
foreach ($spdata as $data=>$speaker)  // Loop through the speakers - zeledon5
{
	echo "\n|||".$speaker."|||\n";
	foreach ($directions as $direction=>$opsign)  // Take utterances below the quartile, and then above it
	{
		//echo "\n___".$direction."\n";
		foreach ($quartiles as $quartile)  // Loop through the quartiles.
		{
			//echo "\n>>>".$quartile."\n";
			$point=$quartile;  // Start off with the selection point at the quartile
			while (count($cumul[$speaker][$quartile][$direction])<$window)
			// If there are less than the number of hits specified in $window for each speaker, direction and quartile ...
			{
				$sql1=query("select $direction (utterance_id) as picked from (select * from $words where utterance_id $opsign $point and speaker='$speaker') as pick");
				while ($row1=pg_fetch_object($sql1))
				{
					//echo $row1->utterance_id."\n";
					$sql2=query("select * from $words where utterance_id=$row1->picked order by utterance_id, location");
					while ($row2=pg_fetch_object($sql2))
					{
						$autocat.=$row2->auto." ";  // Concatenate the autoglosses
					}
					//echo $speaker."(".$row1->picked."): ".$autocat."\n";
					if (preg_match("/\.V\.(?!INFIN)/", $autocat)) 
					{
						// If the concatenation contains a verb that is not an infinitive, count it as a hit for that speaker, direction and quartile, and store the utterance_id in a list for an SQL IN query
						$cumul[$speaker][$quartile][$direction][]=$row1->picked; 
						$inlist.=$row1->picked.",";
					}
					unset($autocat);
					$point=$row1->picked;  // Wind the selection point down (max) or up (min) to the valid utterance_id we just got
				}
			}
		}
	}
}
//print_r($cumul);

$inlist=substr($inlist, 0, -1);  // Trim the excess comma off the end of the list string
echo $inlist."\n";

include("create_sampleclauses.php");

$sql1=query("insert into $sampleclauses select word_id, utterance_id, location, surface, auto, speaker, langid, filename, clause, clauseno from $words where utterance_id in ($inlist) order by utterance_id, location, clauseno");

?>