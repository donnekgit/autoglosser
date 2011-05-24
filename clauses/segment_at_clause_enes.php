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

// This script uses the clause markers to segment the utterances into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql1="select utterance_id from ".$filename."_sampleclauses group by utterance_id order by utterance_id";
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$sql2="select * from ".$filename."_sampleclauses where utterance_id=$row1->utterance_id and clause='c' order by location";
	$result2=pg_query($db_handle,$sql2) or die("Can't get the items");
	while ($row2=pg_fetch_object($result2))
	{
		$locarray[]=$row2->location;
	}
	echo $row1->utterance_id."\n";
	//$locarray[0]=0;  // the first clause-marker will be in $locarray[0]; this will omit words between the beginning of the utterance and this clause-marker; so set $location[0] to the beginning of the utterance (0 instead of whatever number it is)
	//print_r($locarray);

	$j=1;
	for ($i = 0; $i = count($locarray); $i++)
	{
		if(empty($locarray[1]))  // Handle end of the utterance.
		{
			$myand="";
		}
		else
		{
			$myand=" and location<$locarray[1] ";
		}

		$sql4="select * from ".$filename."_sampleclauses where utterance_id=$row1->utterance_id and location>=$locarray[0] $myand order by location";
		$result4=pg_query($db_handle,$sql4) or die("Can't get the items");
		while ($row4=pg_fetch_object($result4))
		{
			$clause.=$row4->surface." ";
			$auto.=$row4->auto." ";
			$sqlc=query("update ".$filename."_sampleclauses set clauseno='$j' where utterance_id=$row1->utterance_id and location>=$locarray[0]");
		}
		echo $j.": ".$clause."\n";
		unset($clause);
		echo $auto."\n";
		if (preg_match("/\.V\.(?!INFIN)/", $auto)) // if there is a verb in the previous chunk, increment the clause number; if not, don't
		{
			$j++;
		}
		else
		{
			$j=$j;
		}

		unset($auto);

		array_shift($locarray);  // Remove the first clause marker in the array so that we can process the next one
		$locarray=array_values($locarray);  // Re-index the array to start at 0 again
	}

	echo "\n";

	unset($locarray);
}

?>