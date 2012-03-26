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

// This script adds data to the table to indicate speech-turns and clauses in each speech turn.  Then it writes out a new table with langid info in it, which can be used by cyp_analyse to analyse the codeswitches in the file.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}


//*****************
/*
// Comment this section out if you want to write out a file directly where the spkturn and clspk columns are already filled (eg the Siarad files from Diana's project).
add_integer_column_if_not_exist($words, "spkturn");
add_integer_column_if_not_exist($words, "clspk");

$s=1;  // Set up a counter for speaker turns.
$c=1;  // Set up a counter for clauses within each speaker turn.

$sql1=query("select utterance_id, clauseno from $words group by utterance_id, clauseno order by utterance_id, clauseno");  // Get all the utterance_ids and clause numbers and place them in order.
while ($row1=pg_fetch_object($sql1))
{
	$utt=$row1->utterance_id;
	$clauseno=$row1->clauseno;
	
	$sql3=query("select * from $words where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
	while ($row3=pg_fetch_object($sql3))
	{
		$clause.=$row3->surface." ";  // Generate the clause.
		$speaker=$row3->speaker;
	}
	
	if ($prev_spk!=$speaker)  // If we have a new speaker ...
	{
		echo "\n";  // Add a blank line to show changes in speech-turn.
		
		$runspk=$s;  // Save the current $s for use in all clauses within this speaker turn.
		$s++;  // Increment the speaker turn counter to reflect a new speaker turn.
		$c=1;  // Since we have a new speaker, reset the clause count.
	}
	
	$sql_s=query("update $words set spkturn=$runspk,  clspk=$c where utterance_id=$utt and clauseno=$clauseno");
	
	echo $speaker.": ".$clause."\n";
	
	$c++; // Increment the clause count within this speaker turn.
	
	$prev_spk=$speaker;  // Keep track of the previous speaker.

	unset($clause);
}
// End of section to be commented out.
*/
//*****************


// We could split this script into two here,

$csdata=$filename."_csdata";

include("create_csdata.php");

$sql1=query("select spkturn, clspk from $words where langid!='999' group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and clauses within that speaker turn and place them in order.  We need to omit punctuation (langid!='999').
while ($row1=pg_fetch_object($sql1))
{
	$spkturn=$row1->spkturn;
	$clspk=$row1->clspk;

	$sql3=query("select * from $words where spkturn=$spkturn and clspk=$clspk and langid!='999' order by location");
	while ($row3=pg_fetch_object($sql3))
	{
		$utt=$row3->utterance_id;
		$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
		$speaker=$row3->speaker;
		//$clause.=$row3->surface." ";  // Generate the clause.
		$clause.=$row3->surface."@".$row3->langid." ";
		$auto.=$row3->auto." ";
		
		$word_lg[$row3->location]=$row3->langid; 
		// Get the language of all words in this clause, keyed to their location in the utterance.
	}
	
	$minloc=min($loc);  // Get location of clause beginning.
	$maxloc=max($loc);  // Get location of clause end.

	$f_lg=reset($word_lg);  // The first word in the clause.
	$p_lg=end($word_lg);  // The last word in the clause.
	
	$word_lg_ser=serialize(array_count_values($word_lg));  // Count how many languages appear in the clause (not counting triggers).

	echo $speaker.": ".$clause."\n";
	
	$surface=trim(pg_escape_string($clause));
	$auto=trim(pg_escape_string($auto));

	$write1=query("insert into $csdata (spkturn, clspk, newturn, utterance_id, minloc, maxloc, word_lg_ser, f_lg, p_lg, speaker, surface, auto, filename) values ($spkturn, $clspk, '', $utt, $minloc, $maxloc, '$word_lg_ser', '$f_lg', '$p_lg', '$speaker', '$surface', '$auto', '$filename')");
	
	if ($prev_spk!=$speaker)  // If we have a new speaker ...
	{
		//fwrite($fp, "\n");  // Add a blank line to delineate speaker turns.
		echo "\n";  // Add a blank line to show changes in speech-turn.
		$write2=query("update $csdata set newturn='new' where clause_id=currval('".$csdata."_clause_id_seq')");
		// But by definition, the first clause (clspk 1) of every spkturn will be new, so we don't really need the above - we could just do a query to add "new" to where clspk=1.
	}
	
	$prev_spk=$speaker;  // Keep track of the previous speaker.

	unset($utt, $loc, $minloc, $maxloc, $speaker, $clause, $auto, $word_lg, $f_lg, $p_lg);
}

?>