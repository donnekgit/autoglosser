<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
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

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_clauses.tex", "w") or die("Can't create the file");

$lines=file("clauses/splitter_header.tex");  // Open header file containing LaTeX markup to set up the document.
foreach ($lines as $line)
{
	if (preg_match("/filename/", $line))  // Replace the holder in the TeX file with the name of the conversation
	{
		$line=preg_replace("/filename/", "$filename", $line);
	}
	else
	{
		$line=$line;
	}
	echo $line."\n";
	fwrite($fp, $line);
}

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
$sqlsp=query("select speaker from $words group by speaker order by speaker");
while ($rowsp=pg_fetch_object($sqlsp))
{
	$sqlq=query("select * from siarad_q where id='$rowsp->speaker'");
	while ($rowq=pg_fetch_object($sqlq))
	{
		$spdata[$rowsp->speaker][aoa_min]=$rowq->welsh_since;
		$spdata[$rowsp->speaker][aoa_maj]=$rowq->english_since;
		$spdata[$rowsp->speaker][mother_lg]=$rowq->mother_spoke;
		$spdata[$rowsp->speaker][father_lg]=$rowq->father_spoke;
		$spdata[$rowsp->speaker][prim_lg]=$rowq->primary_lang;
		$spdata[$rowsp->speaker][sec_lg]=$rowq->secondary_lang;
		$spdata[$rowsp->speaker][nat_id]=$rowq->nat_id;
	}
}

/*
// *** Code to allow sampling of a file at the 25%, 50% and 75% quartiles
$sql_total=query("select count(*) from $utterances");
$total=pg_fetch_result($sql_total, 0, 0);
echo $total."\n";

$q1=round($total/4);
$q2=round($total/2);
$q3=round($q1+$q2);

$span=10;  // The sampling window defines how many utterances will be selected on each side of the quartile utterance

$q1b=$q1-$span;
$q1e=$q1+$span;
$q2b=$q2-$span;
$q2e=$q2+$span;
$q3b=$q3-$span;
$q3e=$q3+$span;

$sql1=query("select utterance_id from $words where utterance_id between $q1b and $q1e or utterance_id between $q2b and $q2e or utterance_id between $q3b and $q3e group by utterance_id order by utterance_id");
// *** If enabling the sampling code, remember to comment out the $sql1 line below
*/

$sql1=query("select utterance_id from $words group by utterance_id order by utterance_id");
while ($row1=pg_fetch_object($sql1))
{
	$sql2=query("select clauseno from $words where utterance_id=$row1->utterance_id group by clauseno order by clauseno");
	while ($row2=pg_fetch_object($sql2))
	{
		$utt=$row1->utterance_id;
		$clauseno=$row2->clauseno;
		
		$sql3=query("select * from $words where utterance_id=$row1->utterance_id and clauseno=$row2->clauseno and langid!='999' order by location");
		while ($row3=pg_fetch_object($sql3))
		{
			$clause.=$row3->surface." ";
			$speaker=$row3->speaker;
			$filename=$row3->filename;
			$langid[]=preg_replace("/&/", "_", $row3->langid);  // The key won't be read if there is a & in it
			$loc[]=$row3->location;
			(preg_match("/\.V\./", $row3->auto)) ? $verb.=$row3->auto."=" : $verb=$verb;
		}
		
		// Linguality data
		$ling=array_count_values($langid);  // Sum the different langids
		$lingtotal=count($langid);  // Get the total words in the clause
		($ling[cym_eng]>0 or $ling[eng]>0) ? $mb="bilingual" : $mb="monolingual";  // If there is at least one cym&eng or eng word, the clause is bilingual
		(empty($ling[cym])) ? $ling[cym]=0 : $ling[cym]=$ling[cym];  // Handle cases where the clause has no cym words
		// Needs fixing - may need to differentiate monolingual Welsh and monolingual English
		
		// Location data
		$minloc=min($loc)  // Get location of clause beginning
;		$maxloc=max($loc);  // Get location of clause end

		// Printout
		
		$verb=preg_replace("/=$/", "", $verb);
		$verb=preg_replace("/\[or\]be\.V.3S\.PRES\.NEG\+SM/", "", $verb);
		
		/*
		// Doesn't really work well in TeX - needs more work
		$sqlu=query("select surface from $utterances  where utterance_id=$row1->utterance_id");
		while ($rowu=pg_fetch_object($sqlu))
		{
			$origutt=tex_surface($rowu->surface);
			fwrite("\n\n".$fp, $origutt."\n\n");
		}
		*/
		
		$texloc="(".$utt.", ".$clauseno.", ".$minloc."-".$maxloc.") ";
		fwrite($fp, $texloc);
		
		$texclause=$speaker.": ".$clause;
		echo $texclause;
		$texclause=tex_surface($texclause);
		fwrite($fp, "\begin{large}\n");
		fwrite($fp, "\\textbf{".$texclause."}\n");
		fwrite($fp, "\end{large}\n\n");

		fwrite($fp, "\begin{scriptsize}");
		
		$texlang="\\textit{Language}: ".$mb." (".$ling[cym]." Welsh out of ".$lingtotal.") ";
		fwrite($fp, $texlang);
		
		$texverb="\\textit{Verb structure}: \\textbf{".$verb."}";
		$texverb=tex_surface($texverb);
		fwrite($fp, $texverb);
		
		$texspk=" \\textit{Speaker}: ";
		fwrite($fp, $texspk." ");
		
		$tex1=" (1) \\textit{Parents}: mother ".$spdata[$speaker][mother_lg].", father ".$spdata[$speaker][father_lg];
		fwrite($fp, $tex1." ");
		
		$tex2= " (2) \\textit{Age of acquisition}: Welsh ".$spdata[$speaker][aoa_min].", English ".$spdata[$speaker][aoa_maj];
		$tex2=tex_surface($tex2);
		fwrite($fp, $tex2);
		
		$tex3= " (3) \\textit{Schooling}: primary ".$spdata[$speaker][prim_lg].", secondary ".$spdata[$speaker][sec_lg];
		fwrite($fp, $tex3." ");
		
		$tex4= " (4) \\textit{Identity}: ".$spdata[$speaker][nat_id];
		fwrite($fp, $tex4." ");
		
		fwrite($fp, "\end{scriptsize}\\\\[1cm]\n");

		echo "\n";

		unset($clause, $langid, $loc, $verb);
	}
	
	fwrite($fp, "\\rule{\linewidth}{0.2mm}\\\\[0.5cm]\n\n");

}

$lines=file("clauses/splitter_footer.tex");  // Open footer file.
foreach ($lines as $line)
{
	fwrite($fp, $line);
}

fclose($fp);	
	

?>