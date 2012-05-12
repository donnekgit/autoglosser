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

// This script writes clause data into a csv file for statistical analysis.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Retrieve speaker data from the questionnaire table and make the desired data-items available in an array
$spdata=get_all_speaker_data($words);

print_r($spdata);

$fp = fopen("caroline/{$filename}_clauses.csv", "w") or die("Can't create the file");

// Spreadsheet column headings
$columns="\"file\",\"utt_no\",\"cl_in_utt\",\"cl_start\",\"cl_end\",\"spkturn_no\",\"cl_in_spkturn\",\"speaker\",\"surface\",\"autogloss\",\"matrix_lg\",\"linguality\",\"dv\",\"verb_morph\",\"qlang\",\"dob\",\"gender\",\"age\",\"work\",\"brought_up\",\"main_area\",\"education\",\"welsh_since\",\"english_since\",\"welsh_ability\",\"english_ability\",\"mother_spoke\",\"father_spoke\",\"guardian_spoke\",\"primary_lg\",\"secondary_lg\",\"welsh_modern\",\"welsh_useful\",\"welsh_friendly\",\"welsh_inspiring\",\"welsh_beautiful\",\"welsh_influential\",\"english_modern\",\"english_useful\",\"english_friendly\",\"english_inspiring\",\"english_beautiful\",\"english_influential\",\"contact1\",\"contact2\",\"contact3\",\"contact4\",\"contact5\",\"nat_id\",\"i_separate\",\"shdbe_separate\"\n";
fwrite($fp, $columns);

$clause="";
$auto="";

$sql2=query("select utterance_id, clauseno from $words where rei!='ignore' and langid!='999' group by utterance_id, clauseno order by utterance_id, clauseno");
while ($row2=pg_fetch_object($sql2))
{
	$utt=$row2->utterance_id;
	$clauseno=$row2->clauseno;
	
	$sql3=query("select * from $words where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
	while ($row3=pg_fetch_object($sql3))
	{
		$clause.=$row3->surface." ";  // Generate the clause.
		$auto.=$row3->auto." ";  // Generate the gloss.
		$speaker=$row3->speaker;
		$filename=$row3->filename;
		$spkturn=$row3->spkturn;
		$spkturnno=$row3->clspk;
		$clause_langid[]=preg_replace("/&/", "_", $row3->langid);
		// Gather clause langids to test linguality.  The key won't be read if there is an & in it.
		$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
		
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
		
	}
	
	$mb_clause=get_linguality($clause_langid);
	
	$sql4=query("select * from $words where utterance_id=$utt and langid!='999' order by location");
	while ($row4=pg_fetch_object($sql4))
	{
		$utt_langid[]=preg_replace("/&/", "_", $row4->langid);
		// Gather utterance langids to test linguality.  The key won't be read if there is an & in it.
	}
	
	// Code to give % of words in the clause that are bilingual - not used currently
	//$lingtotal=count($langid);  // Get the total words in the clause
	//(empty($ling[cym])) ? $ling[cym]=0 : $ling[cym]=$ling[cym];  
	// Handle cases where the clause has no cym words
	// Needs expansion to cover monoE
	
	// Location data
	$minloc=min($loc);  // Get location of clause beginning
	$maxloc=max($loc);  // Get location of clause end
	
	// Verb data
	$verb=substr($verb, 0, -1);  // Trim the excess = off the end of the verb string.
	$verb=preg_replace("/\[or\]be\.V.3S\.PRES\.NEG\+SM/", "", $verb);  // Hack!
	
	// Responder (dependent) variable
	if ($verblg=="eng" and $mb_clause=="monoE")
	{
		$dv="ee";
	}
	elseif ($verblg=="cym" and $mb_clause=="monoW")
	{
		$dv="ww";
	}
	elseif ($verblg=="eng" and $mb_clause=="monoE")
	{
		$dv="ee";
	}
	elseif ($verblg=="cym" and $mb_clause=="monoW")
	{
		$dv="ww";
	}
	elseif ($verblg=="eng" and $mb_clause=="biling")
	{
		$dv="eb";
	}
	elseif ($verblg=="cym" and $mb_clause=="biling")
	{
		$dv="wb";
	}
	else
	{
		$dv="--";
	}
	
	// Printout
	echo $speaker." (".$utt.", ".$clauseno."): ".$clause."(".$mb_clause.") - ".$verblg."\n";
	
	$csvloc="\"".$filename."\",\"".$utt."\",\"".$clauseno."\",\"".$minloc."\",\"".$maxloc."\",\"".$spkturn."\",\"".$spkturnno."\",";
	fwrite($fp, $csvloc);
	// Filename, Utterance number, Clause number, Location of clause start, Location of clause end,
	
	$csvclause="\"".$speaker."\",\"".$clause."\",\"".$auto."\",";
	fwrite($fp, $csvclause);
	// Speaker, Clause,

	$csvling="\"".$verblg."\",\"".$mb_clause."\",\"".$dv."\",\"".$verb."\",";
	fwrite($fp, $csvling);
	// Matrix (verb) language, Linguality of clause, Dependent variable, Verb morphology,
			
	$csvq1="\"".$spdata[$speaker][qlang]."\",\"".$spdata[$speaker][dob]."\",\"".$spdata[$speaker][gender]."\",\"".$spdata[$speaker][age]."\",\"".$spdata[$speaker][work]."\",\"".$spdata[$speaker][brought_up]."\",\"".$spdata[$speaker][main_area]."\",";
	fwrite($fp, $csvq1);
			
	$csvq2="\"".$spdata[$speaker][education]."\",\"".$spdata[$speaker][welsh_since]."\",\"".$spdata[$speaker][english_since]."\",\"".$spdata[$speaker][welsh_ability]."\",\"".$spdata[$speaker][english_ability]."\",\"".$spdata[$speaker][mother_spoke]."\",\"".$spdata[$speaker][father_spoke]."\",\"".$spdata[$speaker][guardian_spoke]."\",";
	fwrite($fp, $csvq2);
	
	$csvq3="\"".$spdata[$speaker][primary_lg]."\",\"".$spdata[$speaker][secondary_lg]."\",\"".$spdata[$speaker][welsh_modern]."\",\"".$spdata[$speaker][welsh_useful]."\",\"".$spdata[$speaker][welsh_friendly]."\",\"".$spdata[$speaker][welsh_inspiring]."\",\"".$spdata[$speaker][welsh_beautiful]."\",\"".$spdata[$speaker][welsh_influential]."\",\"".$spdata[$speaker][english_modern]."\",\"".$spdata[$speaker][english_useful]."\",\"".$spdata[$speaker][english_friendly]."\",\"".$spdata[$speaker][english_inspiring]."\",\"".$spdata[$speaker][english_beautiful]."\",\"".$spdata[$speaker][english_influential]."\",";
	fwrite($fp, $csvq3);
	
	$csvq4= "\"".$spdata[$speaker][contact1]."\",\"".$spdata[$speaker][contact2]."\",\"".$spdata[$speaker][contact3]."\",\"".$spdata[$speaker][contact4]."\",\"".$spdata[$speaker][contact5]."\",\"".$spdata[$speaker][nat_id]."\",\"".$spdata[$speaker][i_separate]."\",\"".$spdata[$speaker][shdbe_separate]."\"\n";
	fwrite($fp, $csvq4);

	unset($clause, $auto, $clause_langid, $utt_langid, $loc, $verb, $verblg, $dv);
}

fclose($fp);	

?>
