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
		
		
		
		// Spanish ****************************

		// Link words before que in Spanish
		if (preg_match("/^(hasta|lo|la|las|tengo|tiene|tienes|tienen)$/", $prev_s) && preg_match("/que/", $this_s))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m1' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}

		//"o sea" in Spanish
		if (preg_match("/^o$/", $prev_s) && preg_match("/sea/", $this_s))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+ms2' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Oblique or object preverbal pronouns in Spanish
		if (preg_match("/\.PRON\.OB(J|L)/", $prev_a) && preg_match("/\.V\.(?!(INFIN|PRESPART|PASTPART))/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+ms3' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Negative preverbal marker in Spanish
		if (preg_match("/no/", $prev_s) && preg_match("/\.V\.(?!(INFIN|PRESPART|PASTPART))/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+ms4' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Preverbal conjunctions in Spanish
		if (preg_match("/^(cuando|después|donde|mientras|pero|porque|que|qué|quién|según|si|sino)$/", $prev_s) && preg_match("/\.V\.(?!(INFIN|PRESPART|PASTPART))/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+ms5' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		
		
		// English ****************************
		
		// Subject pronouns in English
		if (preg_match("/PRON.SUB/", $prev_a) && preg_match("/\.V\.(?!(INFIN|PRESPART|PASTPART))/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+me1' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}

		// Link words in English with following subject pronoun
		if (preg_match("/^(and|because|but|how|if|since|what|when|where|which|why)$/", $prev_s) && preg_match("/PRON.SUB/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+me2' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Link words in English with following elision
		if  (preg_match("/^(and|because|but|how|if|since|what|when|where|why)$/", $prev_s) && preg_match("/^(s?he\'d|s?he\'s|I\'d|I\'m|I\'ve|that\'s|they\'d|they\'re|they\'ve|we\'d|we\'re|we\'ve|you\'d|you\'re|you\'ve)$/", $this_s))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+me3' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		
		
		// Welsh ****************************

		// Prepositions before infinitives in Welsh
		if (preg_match("/^(yng?|wedi|am|heb|newydd)$/", $prev_s) && preg_match("/INFIN/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m1' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Prepositions i and o before infinitives in Welsh
		if (preg_match("/^(i|o)$/", $prev_s) && preg_match("/PREP/", $prev_a) && preg_match("/INFIN/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m2' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Link words before verbs in Welsh
		if (preg_match("/^(nag?|ac?|pan|be|so|os|lle|sut|just|ond|neu|pwy|pryd)$/", $prev_s) && preg_match("/\.V\./", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m3' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
		
		// Pronominal infinitives in Welsh
		if (preg_match("/ADJ\.POSS/", $prev_a) && preg_match("/INFIN/", $this_a))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$before";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m4' where utterance_id=$utt and location=$this_loc";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$this_loc to $utt,$before\n";
		}
	}
}

?>