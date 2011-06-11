<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
$spdata=get_speaker_data($words);

$fp = fopen("outputs/".$filename."/".$filename."_cognates.csv", "w") or die("Can't create the file");

// Spreadsheet column headings
$columns="\"Filename\",\"Utterance number\",\"Clause number\",\"Location of clause start\",\"Location of clause end\",\"Speaker\",\"Clause\"\n";
fwrite($fp, $columns);

$sql1=query("select utterance_id from $words group by utterance_id order by utterance_id");
while ($row1=pg_fetch_object($sql1))
{
	$sql2=query("select clauseno from $words where utterance_id=$row1->utterance_id group by clauseno order by clauseno");
	while ($row2=pg_fetch_object($sql2))
	{
		$utt=$row1->utterance_id;
		$clauseno=$row2->clauseno;
		
		$sql3=query("select * from $words where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
		while ($row3=pg_fetch_object($sql3))
		{
			$clause.=$row3->surface." ";  // Generate the clause.
			$speaker=$row3->speaker;
			$filename=$row3->filename;
			$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
		}
		
		// Location data
		$minloc=min($loc)  // Get location of clause beginning
;		$maxloc=max($loc);  // Get location of clause end
		
		// Printout
		echo $speaker." (".$utt.", ".$clauseno."): ".$clause."(".$mb_clause.") - ".$verblg."\n";
		
		$csvloc="\"".$filename."\",\"".$utt."\",\"".$clauseno."\",\"".$minloc."\",\"".$maxloc."\",";
		fwrite($fp, $csvloc);
		// Corpus, Filename, Utterance number, Clause number, Location of clause start, Location of clause end,
		
		$csvclause="\"".$speaker."\",\"".$clause."\",";
		fwrite($fp, $csvclause);
		// Speaker, Clause,
		
		$endmyline="\n";  // End this record
		fwrite($fp, $endmyline);

		unset($clause, $clause_langid, $utt_langid, $loc, $verb, $verblg, $dv);
	}
	
}

fclose($fp);	
	
?>