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

$sampleclauses=$filename."_sampleclauses";

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
$spdata=get_speaker_data($words);

$fp = fopen("outputs/".$filename."/".$filename."_clauses.csv", "w") or die("Can't create the file");

// Spreadsheet column headings
//$columns="\"Corpus\",\"Filename\",\"Utterance number\",\"Clause number\",\"Location of clause start\",\"Location of clause end\",\"Speaker\",\"Clause\",\"Matrix (verb) language\",\"Linguality of clause\",\"Dependent variable\",\"Linguality of utterance\",\"Mari-Carmen variable\",\"Verb morphology\",\"AoA minority language\",\"AoA majority language\",\"Mother's language\",\"Father's language\",\"Parental input\",\"Primary school language\",\"Secondary school language\",\"Language of education\",\"Identity\",\"Contact1\",\"Contact2\",\"Contact3\",\"Contact4\",\"Contact5\",\"Social network\"\n";
//fwrite($fp, $columns);

// Notes on each column 
//$columns="\"Name of the corpus\",\"Name of the file\",\"Location in the speech tier\",\"Location in the utterance\",\"Word in the utterance at which the clause begins\",\"Word in the utterance at which the clause ends\",\"Speaker\",\"Contents of the clause\",\"cym=Welsh, eng=English\",\"monoW=monolingual Welsh, monoE=monolingual English, biling=bilingual\",\"Generated from ML (first letter) and clause linguality (second letter): eg wb=Welsh ML and bilingual clause\",\"monoW=monolingual Welsh, monoE=monolingual English, biling=bilingual\",\"Generated from ML (first letter), clause linguality (second letter), and utterance linguality (third letter): eg wwb=Welsh ML, Welsh clause, and bilingual utterance\",\"Glosses for verbs in the clause, separated by =\",\"1=<2, 2=<4, 3=primary, 4=secondary, 5=adult, 0=blank\",\"1=<2, 2=<4, 3=primary, 4=secondary, 5=adult, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"Average of the values for mother's language and father's language\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"Average of the values for primary and secondary school language\",\"1=Welsh, 2=English, 3=other, 4=British\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"1=Welsh, 2=Welsh/English, 3=English, 4=other, 0=blank\",\"Average of the values for the 5 contact fields\"\n";
//fwrite($fp, $columns);

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
				// Log the language of the verb for only the first instance
				// Otherwise later verbs will overwrite this, and you get things like "basai fo yn boring" being assigned an ML of eng
				if (empty($verblg)) { $verblg=$row3->langid; } 
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
			$dv="ee";
			$mcv="eee";
		}
		elseif ($verblg=="cym" and $mb_clause=="monoW" and $mb_utt=="monoW")
		{
			$dv="ww";
			$mcv="www";
		}
		elseif ($verblg=="eng" and $mb_clause=="monoE" and $mb_utt=="biling")
		{
			$dv="ee";
			$mcv="eeb";
		}
		elseif ($verblg=="cym" and $mb_clause=="monoW" and $mb_utt=="biling")
		{
			$dv="ww";
			$mcv="wwb";
		}
		elseif ($verblg=="eng" and $mb_clause=="biling" and $mb_utt=="biling")
		{
			$dv="eb";
			$mcv="ebb";
		}
		elseif ($verblg=="cym" and $mb_clause=="biling" and $mb_utt=="biling")
		{
			$dv="wb";
			$mcv="wbb";
		}
		
		// Printout
		echo $speaker." (".$utt.", ".$clauseno."): ".$clause."(".$mb_clause.") - ".$verblg."\n";
		
		$csvloc="\"".Siarad."\",\"".$filename."\",\"".$utt."\",\"".$clauseno."\",\"".$minloc."\",\"".$maxloc."\",";
		fwrite($fp, $csvloc);
		// Corpus, Filename, Utterance number, Clause number, Location of clause start, Location of clause end,
		
		$csvclause="\"".$speaker."\",\"".$clause."\",";
		fwrite($fp, $csvclause);
		// Speaker, Clause,

		$csvling="\"".$verblg."\",\"".$mb_clause."\",\"".$dv."\",\"".$mb_utt."\",\"".$mcv."\",\"".$verb."\",";
		fwrite($fp, $csvling);
		// Matrix (verb) language, Linguality of clause, Dependent variable, Linguality of utterance, Mari-Carmen variable, Verb morphology,
				
		$csvaoa="\"".$spdata[$speaker][aoa_min]."\",\"".$spdata[$speaker][aoa_maj]."\",";
		fwrite($fp, $csvaoa);
		// AoA minority language, AoA majority language,
				
		$csvmofa="\"".$spdata[$speaker][mother_lg]."\",\"".$spdata[$speaker][father_lg]."\",\"".$spdata[$speaker][parent_lg]."\",";
		fwrite($fp, $csvmofa);
		// Mother's language, Father's language, Parental input,
		
		$csveduc="\"".$spdata[$speaker][prim_lg]."\",\"".$spdata[$speaker][sec_lg]."\",\"".$spdata[$speaker][educ_lg]."\",";
		fwrite($fp, $csveduc);
		// Primary school language,Secondary school language, Language of education,
		
		$csvid= "\"".$spdata[$speaker][nat_id]."\",\"".$spdata[$speaker][contact1]."\",\"".$spdata[$speaker][contact2]."\",\"".$spdata[$speaker][contact3]."\",\"".$spdata[$speaker][contact4]."\",\"".$spdata[$speaker][contact5]."\",\"".$spdata[$speaker][socnet]."\"\n";
		fwrite($fp, $csvid);
		// Identity, Contact1, Contact2, Contact3, Contact4, Contact5, Social network

		unset($clause, $clause_langid, $utt_langid, $loc, $verb, $verblg, $dv);
	}
	
}

fclose($fp);	
	
?>