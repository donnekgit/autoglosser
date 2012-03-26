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

// This script deletes the clause marker in specific cases.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql0="select * from $words where clause='c' order by utterance_id, location";  // Gather all the clause-marked words.
$result0=pg_query($db_handle,$sql0) or die("Can't get the items");
while ($row0=pg_fetch_object($result0))
{
	$utt=$row0->utterance_id;
	
	//($prev_utt==$utt ? $prev_c=$prev_c  : $prev_c=0);
	//($prev_utt==$utt ? $prev_a=$prev_a  : $prev_a='');

	$this_s=$row0->surface; // Current surface.
	$this_a=$row0->auto; // Current autogloss.

	$this_loc=$row0->location; // Current location.
	$before=$this_loc - 1;  // Location one slot back (previous location).
	$before2=$this_loc - 2;  // Location two slots back.
	$after=$this_loc + 1;  // Location one slot forward (next location).
	$after2=$this_loc + 2;  // Location two slots forward.
	
	//$span=$this_loc - $prev_c;  // The gap between the current location and the previous clause-marked word.  Can be used to give a rough criterion for whether or not  bod is linked to a following infinitive in a periphrastic tense, but it is a rather blunt knife!
	
	$sql1="select * from $words where utterance_id=$utt and location=$before";  // Get the word before the clause-marked word.
	$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
	while ($row1=pg_fetch_object($result1))
	{
		$prev_s=$row1->surface; // Previous surface.
		$prev_a=$row1->auto; // Previous auto.
		
		// na after jie
		if (preg_match("/^(na)$/", $this_s) && preg_match("/^(jie)$/", $prev_s))
		{
			$d1_da=query("update $words set clause=clause || '+d1' where utterance_id=$utt and location=$this_loc");
			echo "Deleting $utt,$this_loc\n";
		}
		
		// inda[n] after su
		if (preg_match("/^(indan?)$/", $this_s) && preg_match("/^(su)$/", $prev_s))
		{
			$d1_da=query("update $words set clause=clause || '+d1' where utterance_id=$utt and location=$this_loc");
			echo "Deleting $utt,$this_loc\n";
		}
		
		// it's after a conjunction
		if (preg_match("/^(it's|it'd|who's)$/", $this_s) && preg_match("/^(and|because|if|but)$/", $prev_s))
		{
			$d1_da=query("update $words set clause=clause || '+d3' where utterance_id=$utt and location=$this_loc");
			echo "Deleting $utt,$this_loc\n";
		}
	
	}

	//$prev_utt=$utt;  
	//$prev_c=$this_loc;
	//$prev_a=$this_a;

}

?>