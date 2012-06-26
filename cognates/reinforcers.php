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

// This script marks reinforcers in the file when they occur in the array $rei and the speaker differs from the speaker of the preceding clause.  There will be some error messages due to the code not applying properly to punctuation (999), but the last query sets all punctuation to "ignore" too.

// Note the new addition at the end to ignore all IMs.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$words=$words."_nuked";

// Set up the array holding the reinforcers to be ignored.
// For cognates/triggers:
//$rei=array("ah", "ahh", "aha", "a_ha", "argh", "aw", "aww", "aye", "bah", "buh", "blah", "bleugh", "boing", "drat", "dratia", "doh", "duh", "eh", "er", "erm", "eugh", "ew", "grr", "ha", "ha_ha", "hah", "he", "heh", "hei", "hey", "hehey", "ho", "hym", "hmm", "huh", "humph", "jiw", "la_la", "mm", "mmm", "mhm", "mmhm", "mm_hm", "nah", "och", "oh", "ohh", "oho", "oof", "ooh", "oooh", "ooph", "oops", "ouch", "ow", "phew", "phoo", "phooph", "pooph", "pff", "phwoa", "phwoar", "shh", "sht", "shush", "ssh", "tsk", "tut", "twt", "ugh", "uh", "uh_oh", "uhuh", "uhhuh", "uh_huh", "um", "waa", "wah", "wff", "whoa", "whoah", "woohoo", "wow", "waw", "yay", "yey", "ych", "ym", "ý", "yuck", "yuk", "yum", "yummy", "ŵps", "atolwg", "bechod", "damia", "damn", "daria", "diar", "nefi", "ta", "ta_ra", "ta_ta", "wel", "ie", "ia", "yeah", "yep", "yup", "na", "nage", "iawn", "OK", "o_k", "okay", "oce", "right", "timod", "well", "de", "yn_de", "do", "oedd", "oes", "nag oes", "wyt", "ydy", "yndy", "yndan", "yndych", "yndyn");
// For variation analysis:
$rei=array("ah", "ahh", "aha", "a_ha", "argh", "aw", "aww", "aye", "bah", "buh", "blah", "bleugh", "boing", "drat", "dratia", "doh", "duh", "eh", "er", "erm", "eugh", "ew", "grr", "ha", "ha_ha", "hah", "he", "heh", "hei", "hey", "hehey", "ho", "hym", "hmm", "huh", "humph", "jiw", "la_la", "mm", "mmm", "mhm", "mmhm", "mm_hm", "nah", "och", "oh", "ohh", "oho", "oof", "ooh", "oooh", "ooph", "oops", "ouch", "ow", "phew", "phoo", "phooph", "pooph", "pff", "phwoa", "phwoar", "shh", "sht", "shush", "ssh", "tsk", "tut", "twt", "ugh", "uh", "uh_oh", "uhuh", "uhhuh", "uh_huh", "um", "waa", "wah", "wff", "whoa", "whoah", "woohoo", "wow", "waw", "yay", "yey", "ych", "ym", "ý", "yuck", "yuk", "yum", "yummy", "ŵps", "de", "yn_de", "do", "ie", "ia", "yeah", "yep", "na", "nage", "iawn", "OK", "o_k", "right", "timod", "well");
// Omitted when doing  variation analysis: "oedd", "oes", "nag oes", "wyt", "ydy", "yndy", "yndan", "yndyn"

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

// Ignore all line-terminators, to concentrate on the data.
$sql_rei=query("update $words set rei='ignore' where langid='999'");

?>