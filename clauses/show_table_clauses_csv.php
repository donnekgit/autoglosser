<?php

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_clauses.csv", "w") or die("Can't create the file");

// Spreadsheet column headings
$columns="Corpus, Filename, Utterance number, Clause number, Location of clause start, Location of clause end,Speaker, Clause, Linguality, Matrix language, Dependent variable, Word order, Verb morphology, ML principles, AoA minority language, AoA majority language, Mother's language, Father's language, Parental input,Primary school language,Secondary school language, Language of education, Identity, Social network\n";
fwrite($fp, $columns);

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
	
		$csvloc="".Siarad.",".$filename.",".$utt.",".$clauseno.",".$minloc.",".$maxloc.",";
		fwrite($fp, $csvloc);
		
		$csvclause="".$speaker.",".$clause.",";
		echo clause;
		fwrite($fp, $csvclause);

		$csvling="".$mb.",,,,";
		fwrite($fp, $csvling);
		// ML, DV, word order
		
		$csvverb="".$verb.",,";
		fwrite($fp, $csvverb);
		// ML principles
		
		$csvaoa="".$spdata[$speaker][aoa_min].",".$spdata[$speaker][aoa_maj].",";
		fwrite($fp, $csvaoa);
				
		$csvmofa="".$spdata[$speaker][mother_lg].",".$spdata[$speaker][father_lg].",,";
		fwrite($fp, $csvmofa);
		// Parental input

		$csveduc="".$spdata[$speaker][prim_lg].",".$spdata[$speaker][sec_lg].",,";
		fwrite($fp, $csveduc);
		// Language of education

		$csvid= "".$spdata[$speaker][nat_id].",\n";
		fwrite($fp, $csvid);
		// Social network

		unset($clause, $langid, $loc, $verb);
	}
	
}

fclose($fp);	
	
?>