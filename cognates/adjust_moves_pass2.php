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

// This script moves the clause marker in specific cases.

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
	
	$this_s=$row0->surface; // Current surface.
	$this_a=$row0->auto; // Current autogloss.

	$this_loc=$row0->location; // Current location.
	$before=$this_loc - 1;  // Location one slot back (previous location).
	$before2=$this_loc - 2;  // Location two slots back.
	$after=$this_loc + 1;  // Location one slot forward (next location).
	$after2=$this_loc + 2;  // Location two slots forward.

	$sql1="select * from $words where utterance_id=$utt and location=$before";  // Get the word before the clause-marked word.
	$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
	while ($row1=pg_fetch_object($result1))
	{
		$prev_s=$row1->surface; // Previous surface.
		$prev_a=$row1->auto; // Previous auto.

		// Link words in English
		if (preg_match("/^(and|because|but|if|since|what|when|where|why)$/", $prev_s) && preg_match("/PRON.SUB/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+me1' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
	}
}

?>