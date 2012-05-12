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

// This script prints out the file omitting the reinforcers, and adds data to the table to indicate speech-turns and clauses in each speech turn.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$s=1;  // Set up a counter for speaker turns.
$c=1;  // Set up a counter for clauses within each speaker turn.

$fp = fopen("cognates/outputs/".$filename."_spk.txt", "w") or die("Can't create the file");

$sql1=query("select utterance_id, clauseno from $words where rei!='ignore' group by utterance_id, clauseno order by utterance_id, clauseno");  // Get all the utterance_ids and clause numbers and place them in order.
while ($row1=pg_fetch_object($sql1))
{
	$utt=$row1->utterance_id;
	$clauseno=$row1->clauseno;
	
	$sql3=query("select * from $words where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
	while ($row3=pg_fetch_object($sql3))
	{
		if (preg_match("/^t[0-9]$/", $row3->cognate))  // Mark the triggers in the printout.
		{
			$row3->surface="*".$row3->surface."*";
		}
		
		$clause.=$row3->surface." ";  // Generate the clause.
		$speaker=$row3->speaker;
	}
	
	if ($prev_spk!=$speaker)  // If we have a new speaker ...
	{
		fwrite($fp, "\n");  // Add a blank line to delineate speaker turns.
		echo "\n";  // Add a blank line to show changes in speech-turn.
		
		$runspk=$s;  // Save the current $s for use in all clauses within this speaker turn. 
		$s++;  // Increment the speaker turn counter to reflect a new speaker turn.
		$c=1;  // Since we have a new speaker, reset the clause count.
	}
	
	$sql_s=query("update $words set spkturn=$runspk, clspk=$c where utterance_id=$utt and clauseno=$clauseno");
	
	//fwrite($fp, "(".$runspk.", ".$c.") ".$speaker.": ".$clause."\n");  // Write out the clauses.
	fwrite($fp, "(".$runspk.", ".$c.") [".$utt."] ".$speaker.": ".$clause."\n");  // Write out the clauses, utterance_ids in square brackets.
	echo $speaker.": ".$clause."\n";
	
	$c++; // Increment the clause count within this speaker turn.
	
	$prev_spk=$speaker;  // Keep track of the previous speaker.

	unset($clause);
}

fclose($fp);

?>