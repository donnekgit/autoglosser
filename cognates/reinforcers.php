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

// This script marks reinforcers in the file when they occur in the array $rei and the speaker differs from the speaker of the preceding clause.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Set up the array holding the reinforcers to be ignored.
$rei=array("ah", "ahh", "er", "hmm", "huh", "mmm", "mmhm", "oh", "ooh", "uh_oh", "um", "de", "yn_de", "do", "ie", "ia", "oedd", "oes", "wyt", "yeah", "yep", "ydy", "yndy", "yndan", "yndyn", "na", "nag oes", "nage", "iawn", "OK", "o_k", "right", "timod");

$sql1=query("select utterance_id from $words group by utterance_id order by utterance_id");  // Get all the utterance_ids and place them in order.
while ($row1=pg_fetch_object($sql1))
{
	$utt=$row1->utterance_id;
	
	$sql2=query("select clauseno from $words where utterance_id=$utt group by clauseno order by clauseno");  // Get all the clausnos for each utterance and place them in order.
	while ($row2=pg_fetch_object($sql2))
	{
		$clauseno=$row2->clauseno;
		
		$sql3=query("select * from $words where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
		while ($row3=pg_fetch_object($sql3))
		{
			$clause.=$row3->surface." ";  // Generate the clause.
			$speaker=$row3->speaker;
			
			if (!in_array($row3->surface, $rei))  // Check each word against the reinforcers array; if it is not there, increment $nonrei.
			{
				$nonrei++;
			}
		}
		
		if ($nonrei<1)  // All the words in the clause were reinforcers, so mark them as "ignore".
		{
			$sql_rei=query("update $words set rei='ignore' where utterance_id=$utt and clauseno=$clauseno");
		}

		echo $speaker." (".$utt.", ".$clauseno."): ".$clause." [".$nonrei."]\n";
		
		unset($clause, $check, $nonrei);
	}
}

?>