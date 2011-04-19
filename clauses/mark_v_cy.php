<?php

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql_clear=query("update $words set clause=''");

$sql_mark=query("update $words set clause='c' where auto~'\\\.V\\\.' or surface='dyna'");

?>