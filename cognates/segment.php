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

//$fp = fopen("caroline/".$filename."_split.txt", "w") or die("Can't create the file");

$sql1="select utterance_id, speaker from $words group by utterance_id, speaker order by utterance_id";  // List the utterance_ids and speaker in sequence.
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$speaker=$row1->speaker; 
	
	//fwrite($fp, $row1->utterance_id."\n");
	echo $row1->utterance_id."\n";  // Show feedback.

	// For each utterance, get the locations where there is a clause_marker, and store those locations in an array.
	$sql2="select * from $words where utterance_id=$row1->utterance_id and clause='c' order by location";
	$result2=pg_query($db_handle,$sql2) or die("Can't get the items");
	while ($row2=pg_fetch_object($result2))
	{
		$locarray[]=$row2->location;
		// $locarray[0] will hold the first clause-marker, $locarray[1] the second, and so on.
		// We progressively slice off $locarray[0] at the end of each loop, and reindex so that $locarray[1] becomes $locarray[0].
		// When we come to the last clause-marker in the utterance, there is no $locarray[1], hence $myand below.
	}
	
	$locarray[0]=0;
	// the first clause-marker will be in $locarray[0]; this will omit words between the beginning of the utterance and this clause-marker; so set $location[0] to the beginning of the utterance (0 instead of whatever number it is)
	// CHECK - deprecated? because mark.php puts a clause-marker at every location 1 anyway
	// CHECK - but this is maybe a better way - the mark.php way will give redundant clause-markers (a pwy sy - c c c+m3) - but then where you have only one clause-marker in an utterance, this will ignore that marker, and give one clause instead of two ...
	//print_r($locarray); 

	$j=1;  // Set a counter to hold the clause numbers we want to add to the table.
	
	for ($i=0; $i=count($locarray); $i++)  // Loop through the array holding the clause-markers.
	{
		if(empty($locarray[1]))  // Handle the end of the utterance ...
		{
			$myand="";  // ... if there is no $locarray[1], we are at the last clause-marker, so we don't need an upper bound ...
		}
		else
		{
			$myand=" and location<$locarray[1] ";  // ... and if there is a $locarray[1], we need to use it as the upper bound.
		}

		// Get all the words between the first clause-marker and the second (if it exists).
		$sql4="select * from $words where utterance_id=$row1->utterance_id and langid!='999' and location>=$locarray[0] $myand order by location";
		$result4=pg_query($db_handle,$sql4) or die("Can't get the items");
		while ($row4=pg_fetch_object($result4))
		{
			$clause.=$row4->surface." ";
			$auto.=$row4->auto." ";
			// Add the clause number from the $j counter.
			$sqlc=query("update $words set clauseno='$j' where utterance_id=$row1->utterance_id and location>=$locarray[0]");
		}
		
		echo $j.": ".$clause."\n";  // Show feedback.
		
		//fwrite($fp, $speaker.": ".$clause."\n");  // Write out the split clauses.
		
		unset($clause);  // Clear the $clause variable.
		
		$j++;  // Increment the clause number.
				
		unset($auto);  // Clear the $auto variable.

		array_shift($locarray);  // Slice off the first clause-marker in the array so that we can process the next one on the next run through the loop.
		$locarray=array_values($locarray);  // Re-index the array to start at 0 again - ie $locarray[1] becomes $locarray[0]
	}

	//fwrite($fp, "\n");
	echo "\n";

	unset($locarray);  // Clear the $locarray array so that it can be filled with the clause-marker locations in the next utterance..
}

//fclose($fp);

?>