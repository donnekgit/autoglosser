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

// This script arranges the file in order of speech-turn and clause.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$clause="";
$auto="";
$langid="";
$slotlg="";

//$words=$words."_nuked";
//$cognates=$filename."_diana";

$fp=fopen("cognates/diana/".$filename."_spkturn.txt", "w") or die("Can't create the file");

include("create_cognates.php");

$sql1=query("select spkturn, clspk from $words where langid!='999' and rei!='ignore' group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and clauses within that speaker turn and place them in order.  We need to omit punctuation (langid!='999') and reinforcers (rei!='ignore').
while ($row1=pg_fetch_object($sql1))
{
	$spkturn=$row1->spkturn;
	$clspk=$row1->clspk;

	$sql3=query("select * from $words where spkturn=$spkturn and clspk=$clspk and langid!='999' order by location");
	while ($row3=pg_fetch_object($sql3))
	{
		//if (preg_match("/^t[0-9]$/", $row3->cognate))
		if ($row3->cognate!="")
		{
			$row3->surface="*".$row3->surface."*";  // Mark the triggers in the printout.
		}
		
		$utt=$row3->utterance_id;
		$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
		$speaker=$row3->speaker;
		$clause.=$row3->surface." ";  // Generate the clause.
		$auto.=$row3->auto." ";  // Generate the autogloss.
		$langid.=$row3->langid." ";  // Generate the langid sequence.
		
		// Collect verbs to give verb morphology
		if (preg_match("/\.V\./", $row3->auto))
		{
			$verb.=$row3->auto."+";
			// Log the language of the verb for only the first instance
			// Otherwise later verbs will overwrite this, and you get things like "basai fo yn boring" being assigned an ML of eng
			if (empty($verblg)) { $verblg=$row3->langid; } 
		}
		else
		{
			$verb=$verb;
		}
		
		// Generate a numerical representation of the  langid sequence.
		//if (preg_match("/^t[0-9]$/", $row3->cognate))
		if ($row3->cognate!="")
		{
			$slot="T";
		}
		elseif ($row3->langid=="cym")
		{
			$slot="1";
		}
		elseif ($row3->langid=="eng")
		{
			$slot="2";
		}
		elseif ($row3->langid=="spa")
		{
			$slot="3";
		}
		elseif ($row3->langid=="cym&eng")
		{
			$slot="0";
		}
		elseif ($row3->langid=="eng&spa")
		{
			$slot="0";
		}
		$slotlg.=$slot;

		//if (!preg_match("/^t[0-9]$/", $row3->cognate))
		if ($row3->cognate=="")
		{
			$nt_lg[$row3->location]=$row3->langid; 
			// Get the language of all non-Ts in this clause, keyed to their location in the utterance.  Language array for non-Ts.
			// The first item will always be the earliest non-T in the clause, the last item the last non-T in the clause.
		}
		else
		{
			$t[$row3->location]=$row3->cognate;  // Get the utterance location of all Ts in this clause.  Location array for Ts.
		}
	}
	
	$minloc=min($loc);  // Get location of clause beginning.
	$maxloc=max($loc);  // Get location of clause end.
	
	// Verb data
	$verb=substr($verb, 0, -1);  // Trim the excess = off the end of the verb string.
	$verb=preg_replace("/\[or\]be\.V.3S\.PRES\.NEG\+SM/", "", $verb);  // Hack!

	$f_lg=reset($nt_lg);  // Language of the first non-T in the clause.
	$p_lg=end($nt_lg);  // Language of the last non-T in the clause.
	
	$t_ser=serialize($t);
	
	$nt_lg_ser=serialize(array_count_values($nt_lg));  // Count how many languages appear in the clause (not counting triggers).

	$surface=trim(pg_escape_string($clause));
	$auto=trim(pg_escape_string($auto));

	$write1=query("insert into $cognates (spkturn, clspk, newturn, utterance_id, minloc, maxloc, t_ser, nt_lg_ser, f_lg, p_lg, speaker, surface, auto, verb, verblg, langid, slotlg, filename) values ($spkturn, $clspk, '', $utt, $minloc, $maxloc, '$t_ser', '$nt_lg_ser', '$f_lg', '$p_lg', '$speaker', '$surface', '$auto', '$verb', '$verblg', '$langid', '$slotlg', '$filename')");
	
	if ($prev_spk!=$speaker)  // If we have a new speaker ...
	{
		fwrite($fp, "\n");  // Add a blank line to delineate speaker turns.
		echo "\n";  // Add a blank line to show changes in speech-turn.
		$write2=query("update $cognates set newturn='new' where clause_id=currval('".$cognates."_clause_id_seq')");
		// But by definition, the first clause (clspk 1) of every spkturn will be new, so we don't really need the above - we could just do a query to add "new" to where clspk=1.
	}
	
	// Write out a check file
	fwrite($fp, $spkturn.", ".$clspk."\t".$speaker."\t".$clause."\n");  // Write out the clauses.
	echo $speaker.": ".$clause."\n";

	$prev_spk=$speaker;  // Keep track of the previous speaker.

	unset($utt, $loc, $minloc, $maxloc, $speaker, $clause, $auto, $langid, $verb, $verblg, $slot, $slotlg, $nt_lg, $t);
}

fclose($fp);

?>