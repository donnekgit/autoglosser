<?php

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql_clear=query("update ".$filename."_sampleclauses set clause=''");  // Remove previous clause-splitting entries

$sql_mark=query("update ".$filename."_sampleclauses set clause='c' where location=1");  // Put a clause-marker at the beginning of every utterance

$sql_mark=query("update ".$filename."_sampleclauses set clause='c' where langid='spa' and surface~'^(cuando|porque|quién|qué|que|donde|si|pero)$'");  // Put a clause-marker against conjunctions in Spanish

$sql_mark=query("update ".$filename."_sampleclauses set clause='c' where langid='eng' and auto~'PRON.SUB'");  // Put a clause-marker against subject pronouns in English

$sql_mark=query("update ".$filename."_sampleclauses set clause='c' where langid='cym' and auto~'\\\.V\\\.(?!INFIN)'");  // Put a clause-marker against verb entries in Welsh provided they are not infinitives


?>