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

$cognates=$filename."_cognates";

include("create_cognates.php");

//$fp = fopen("cognates/outputs/".$filename."_spkturn.txt", "w") or die("Can't create the file");

$sql1=query("select spkturn, clspk from $words where langid!='999' and rei!='ignore' group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and clauses within that speaker turn and place them in order.  We need to omit punctuation (langid!='999') and reinforcers (rei!='ignore').
while ($row1=pg_fetch_object($sql1))
{
	$spkturn=$row1->spkturn;
	$clspk=$row1->clspk;

	$sql3=query("select * from $words where spkturn=$spkturn and clspk=$clspk and langid!='999' order by location");
	while ($row3=pg_fetch_object($sql3))
	{
		if (preg_match("/^t[0-9]$/", $row3->cognate))
		{
			$row3->surface="*".$row3->surface."*";  // Mark the triggers in the printout.
		}
		
		$utt=$row3->utterance_id;
		$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
		$speaker=$row3->speaker;
		$clause.=$row3->surface." ";  // Generate the clause.
		$auto.=$row3->auto." ";
		
		if (!preg_match("/^t[0-9]$/", $row3->cognate))
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

	$f_lg=reset($nt_lg);  // The first non-T in the clause.
	$p_lg=end($nt_lg);  // The last non-T in the clause.
	
	$t_ser=serialize($t);
	
	$nt_lg_ser=serialize(array_count_values($nt_lg));  // Count how many languages appear in the clause (not counting triggers).

	// Write out a check file
	
	//fwrite($fp, $spkturn.", ".$clspk."\t".$speaker."\t".$clause."\n");  // Write out the clauses.
	echo $speaker.": ".$clause."\n";
	
	$surface=trim(pg_escape_string($clause));
	$auto=trim(pg_escape_string($auto));

	$write1=query("insert into $cognates (spkturn, clspk, newturn, utterance_id, minloc, maxloc, t_ser, nt_lg_ser, f_lg, p_lg, speaker, surface, auto, filename) values ($spkturn, $clspk, '', $utt, $minloc, $maxloc, '$t_ser', '$nt_lg_ser', '$f_lg', '$p_lg', '$speaker', '$surface', '$auto', '$filename')");
	
	if ($prev_spk!=$speaker)  // Add a blank line to show changes in speech-turn.
	{
		//fwrite($fp, "\n");  // Add a blank line to delineate speaker turns.
		echo "\n";
		$write2=query("update $cognates set newturn='new' where clause_id=currval('".$cognates."_clause_id_seq')");
	}
	
	$prev_spk=$speaker;  // Keep track of the previous speaker.

	unset($utt, $loc, $minloc, $maxloc, $speaker, $clause, $auto, $nt_lg, $t, $langs);
}

//fclose($fp);

?>