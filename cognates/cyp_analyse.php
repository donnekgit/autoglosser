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

// This script analyses the codeswitch data in _csdata and writes out a file giving internal and external codeswitch data for each speech-turn.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$csdata=$filename."_csdata";

$fp = fopen("cypriot/outputs/csdata/siarad/".$filename."_csdata.txt", "w") or die("Can't create the file");

$sql_t=query("select spkturn, clspk from $csdata group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and place them in order.
while ($row_t=pg_fetch_object($sql_t))
{
	$spkturn=$row_t->spkturn;
	$clspk=$row_t->clspk;
	$tally[$spkturn]=$clspk;  // Tally how many clauses (value) are in each speaker turn (key).
}

//print_r($tally);

$sql1=query("select spkturn, clspk from $csdata group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and place them in order.
while ($row1=pg_fetch_object($sql1))
{
	$spkturn=$row1->spkturn;
	$clspk=$row1->clspk;

	$sql3=query("select * from $csdata where spkturn=$spkturn and clspk=$clspk order by clause_id");
	while ($row3=pg_fetch_object($sql3))
	{
		$utt=$row3->utterance_id;
		$minloc=$row3->minloc;
		$maxloc=$row3->maxloc;
		$speaker=$row3->speaker;
		$word_lg=unserialize($row3->word_lg_ser);  // The count of words in different languages appearing in the clause.
		$surface=$row3->surface;
		$new=$row3->newturn;
		$f_lg=$row3->f_lg;
		$p_lg=$row3->p_lg;
		$clause_id=$row3->clause_id;  // Number of this clause.
		$nextcl=$clause_id+1;  // Number of the next clause.
		$prevcl=$clause_id-1;  // Number of the previous clause.
				
		$sql4=query("select * from $csdata where clause_id=$nextcl");
		while ($row4=pg_fetch_object($sql4))
		{
			$next_f_lg=$row4->f_lg;
			$nextnew=$row4->newturn;
			$next_word_lg=unserialize($row4->word_lg_ser);
		}
		
		$sql5=query("select * from $csdata where clause_id=$prevcl");
		while ($row5=pg_fetch_object($sql5))
		{
			$prev_p_lg=$row5->p_lg;
			$prevnew=$row5->newturn;
			$prev_word_lg=unserialize($row4->word_lg_ser);
		}
	}
	
	// ****************************
	// External count (interclausal) - is there a codeswitch between the last word of a clause and the first word of the next clause?
		
	$external=($p_lg!=$next_f_lg) ? "ext" : "---";
	
	// ****************************
	// Internal count (intraclausal) - is there a codeswitch anywhere within the clause?
	
	$internal=(count($word_lg)>1)  ? "int" : "---";// If there is more than one language in the clause (an internal codeswitch) ...

	// ****************************
	// Write out a check file

	if ($new=='new')  // Add blank lines to show changes in speech-turn.
	{
		fwrite($fp, "\n\n");  // Add blank lines to delineate speaker turns.
		echo "\n\n";
	}
	
	//$surface=preg_replace("/@[23]/", "", $surface);  // Cypriot.
	$surface=preg_replace("/@cym(?!&)/", "", $surface);  // Siarad.

	//fwrite($fp, $spkturn.", ".$clspk."\t".$utt.", ".$minloc."-".$maxloc."\t".$speaker."\t".$surface."\t".$external."\t".$internal."\n");  // Write out the clauses.
	fwrite($fp, $speaker."   ".$surface." // ".$internal." ~ ".$external."\n");  // Write out the clauses.

	echo $speaker.": ".$surface." //  ".$internal." ~ ".$external."\n";
	
	$write1=query("update $csdata set external='$external', internal='$internal' where spkturn=$spkturn and clspk=$clspk");
}

fclose($fp);

?>