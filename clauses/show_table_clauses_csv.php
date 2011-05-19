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
// deprecated

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_clauses.csv", "w") or die("Can't create the file");

// Spreadsheet column headings
$columns="Corpus, Filename, Utterance number, Clause number, Location of clause start, Location of clause end,Speaker, Clause, Linguality, Matrix (verb) language, Dependent variable, Verb language, Verb morphology, ML principles, AoA minority language, AoA majority language, Mother's language, Father's language, Parental input,Primary school language,Secondary school language, Language of education, Identity, Social network\n";
fwrite($fp, $columns);

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
$spdata=get_speaker_data($words);

// *** Code to allow sampling of a file at the 25%, 50% and 75% quartiles
$sql_total=query("select count(*) from $utterances");
$total=pg_fetch_result($sql_total, 0, 0);
//echo $total."\n";

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


//$sql1=query("select utterance_id from $words group by utterance_id order by utterance_id");
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
		$ling=array_count_values($langid);  // Get a count of all the langids.
		$lingtotal=count($langid);  // Get the total words in the clause
		($ling[cym_eng]>0 or $ling[eng]>0) ? $mb="bilingual" : $mb="monolingual";  // If there is at least one cym&eng or eng word, the clause is bilingual
		(empty($ling[cym])) ? $ling[cym]=0 : $ling[cym]=$ling[cym];  // Handle cases where the clause has no cym words
		// Needs fixing - may need to differentiate monolingual Welsh and monolingual English
		
		// Location data
		$minloc=min($loc)  // Get location of clause beginning
;		$maxloc=max($loc);  // Get location of clause end

		// Printout
		
		$verb=preg_replace("/=$/", "", $verb);  // Trim the end of the verb string.
		$verb=preg_replace("/\[or\]be\.V.3S\.PRES\.NEG\+SM/", "", $verb);  // Hack!
	
		$csvloc="\"".Siarad."\",\"".$filename."\",\"".$utt."\",\"".$clauseno."\",\"".$minloc."\",\"".$maxloc."\",";
		fwrite($fp, $csvloc);
		
		$csvclause="\"".$speaker."\",\"".$clause."\",";
		echo clause;
		fwrite($fp, $csvclause);

		$csvling="\"".$mb."\",\"\",\"\",\"\",";
		fwrite($fp, $csvling);
		// ML, DV, word order
		
		$csvverb="\"".$verb."\",\"\",";
		fwrite($fp, $csvverb);
		// ML principles
		
		$csvaoa="\"".$spdata[$speaker][aoa_min]."\",\"".$spdata[$speaker][aoa_maj]."\",";
		fwrite($fp, $csvaoa);
				
		$csvmofa="\"".$spdata[$speaker][mother_lg]."\",\"".$spdata[$speaker][father_lg]."\",\"".$spdata[$speaker][parent_lg]."\",";
		fwrite($fp, $csvmofa);

		$csveduc="\"".$spdata[$speaker][prim_lg]."\",\"".$spdata[$speaker][sec_lg]."\",\"".$spdata[$speaker][educ_lg]."\",";
		fwrite($fp, $csveduc);

		$csvid= "\"".$spdata[$speaker][nat_id]."\",\"".$spdata[$speaker][socnet]."\"\n";
		fwrite($fp, $csvid);
		// Social network

		unset($clause, $langid, $loc, $verb);
	}
	
}

fclose($fp);	
	
?>