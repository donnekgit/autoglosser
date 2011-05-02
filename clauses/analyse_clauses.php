<?php

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sampleclauses=$filename."_sampleclauses";

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
$spdata=get_speaker_data($words);

$fp = fopen("outputs/".$filename."/".$filename."_clauses.csv", "w") or die("Can't create the file");

// Spreadsheet column headings
$columns="Corpus, Filename, Utterance number, Clause number, Location of clause start, Location of clause end,Speaker, Clause, Matrix (verb) language, Linguality of clause, Linguality of utterance, Dependent variable, Verb morphology, AoA minority language, AoA majority language, Mother's language, Father's language, Parental input,Primary school language,Secondary school language, Language of education, Identity, Social network\n";
fwrite($fp, $columns);

$sql1=query("select utterance_id from $sampleclauses group by utterance_id order by utterance_id");
while ($row1=pg_fetch_object($sql1))
{
	$sql2=query("select clauseno from $sampleclauses where utterance_id=$row1->utterance_id group by clauseno order by clauseno");
	while ($row2=pg_fetch_object($sql2))
	{
		$utt=$row1->utterance_id;
		$clauseno=$row2->clauseno;
		
		$sql3=query("select * from $sampleclauses where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
		while ($row3=pg_fetch_object($sql3))
		{
			$clause.=$row3->surface." ";  // Generate the clause.
			$speaker=$row3->speaker;
			$filename=$row3->filename;
			$clause_langid[]=preg_replace("/&/", "_", $row3->langid);
			// Gather clause langids to test linguality.  The key won't be read if there is an & in it.
			$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
			
			// Collect verbs to give verb morphology
			if (preg_match("/\.V\./", $row3->auto))
			{
				$verb.=$row3->auto."=";
				$verblg=$row3->langid;
			}
			else
			{
				$verb=$verb;
			}
			
		}
		
		$mb_clause=get_linguality($clause_langid);
		
		$sql4=query("select * from $sampleclauses where utterance_id=$utt and langid!='999' order by location");
		while ($row4=pg_fetch_object($sql4))
		{
			$utt_langid[]=preg_replace("/&/", "_", $row4->langid);
			// Gather utterance langids to test linguality.  The key won't be read if there is an & in it.
		}
		
		$mb_utt=get_linguality($utt_langid);

		// Code to give % of words in the clause that are bilingual - not used currently
		//$lingtotal=count($langid);  // Get the total words in the clause
		//(empty($ling[cym])) ? $ling[cym]=0 : $ling[cym]=$ling[cym];  
		// Handle cases where the clause has no cym words
		// Needs expansion to cover monoE
		
		// Location data
		$minloc=min($loc)  // Get location of clause beginning
;		$maxloc=max($loc);  // Get location of clause end
		
		// Verb data
		$verb=substr($verb, 0, -1);  // Trim the excess = off the end of the verb string.
		$verb=preg_replace("/\[or\]be\.V.3S\.PRES\.NEG\+SM/", "", $verb);  // Hack!
		
		// Responder (dependent) variable
		if ($verblg=="eng" and $mb_clause=="monoE" and $mb_utt=="monoE")
		{
			$dv="eee";
		}
		elseif ($verblg=="cym" and $mb_clause=="monoW" and $mb_utt=="monoW")
		{
			$dv="www";
		}
		elseif ($verblg=="eng" and $mb_clause=="monoE" and $mb_utt=="biling")
		{
			$dv="eeb";
		}
		elseif ($verblg=="cym" and $mb_clause=="monoW" and $mb_utt=="biling")
		{
			$dv="wwb";
		}
		elseif ($verblg=="eng" and $mb_clause=="biling" and $mb_utt=="biling")
		{
			$dv="ebb";
		}
		elseif ($verblg=="cym" and $mb_clause=="biling" and $mb_utt=="biling")
		{
			$dv="wbb";
		}
		
		// Printout
		echo $speaker." (".$utt.", ".$clauseno."): ".$clause."(".$mb_clause.") - ".$verblg."\n";
		
		$csvloc="\"".Siarad."\",\"".$filename."\",\"".$utt."\",\"".$clauseno."\",\"".$minloc."\",\"".$maxloc."\",";
		fwrite($fp, $csvloc);
		// Corpus, Filename, Utterance number, Clause number, Location of clause start, Location of clause end,
		
		$csvclause="\"".$speaker."\",\"".$clause."\",";
		fwrite($fp, $csvclause);
		// Speaker, Clause,

		$csvling="\"".$verblg."\",\"".$mb_clause."\",\"".$mb_utt."\",\"".$dv."\",\"".$verb."\",";
		fwrite($fp, $csvling);
		// Matrix (verb) language, Linguality of clause, Linguality of utterance, Dependent variable, Verb morphology,
				
		$csvaoa="\"".$spdata[$speaker][aoa_min]."\",\"".$spdata[$speaker][aoa_maj]."\",";
		fwrite($fp, $csvaoa);
		// AoA minority language, AoA majority language,
				
		$csvmofa="\"".$spdata[$speaker][mother_lg]."\",\"".$spdata[$speaker][father_lg]."\",\"".$spdata[$speaker][parent_lg]."\",";
		fwrite($fp, $csvmofa);
		// Mother's language, Father's language, Parental input,
		
		$csveduc="\"".$spdata[$speaker][prim_lg]."\",\"".$spdata[$speaker][sec_lg]."\",\"".$spdata[$speaker][educ_lg]."\",";
		fwrite($fp, $csveduc);
		// Primary school language,Secondary school language, Language of education,
		
		$csvid= "\"".$spdata[$speaker][nat_id]."\",\"".$spdata[$speaker][socnet]."\"\n";
		fwrite($fp, $csvid);
		// Identity, Social network

		unset($clause, $clause_langid, $utt_langid, $loc, $verb, $verblg, $dv);
	}
	
}

fclose($fp);	
	
?>