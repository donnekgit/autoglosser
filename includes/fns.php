<?php

function drop_existing_table($table)
{
	global $db_handle;
	$sql_exists="select count(*) as count from pg_class where relname = '".$table."'";
	$result_exists=pg_query($db_handle, $sql_exists);
	$row_exists=pg_fetch_object($result_exists);
	if ($row_exists->count > 0)
	{
		$sql_del="drop table $table";
		$result_del=pg_query($db_handle, $sql_del);
		//echo "Table ".$newchafile." already exists";
	}
	else
	{
		//echo "There is no table ".$newchafile;
		//exit;
	}
}

function clean_utterance($text)
{
	$text=preg_replace("/\[.+\]/u", "", $text); // anything in square brackets
	$text=preg_replace("/&.[^ ]+ /u", "", $text);  // &=<laugh>
	$text=preg_replace("/(\.|!)[^$]/u", "", $text); // periods or exclamation marks that are not at the end of the sentence
	$text=preg_replace("/[^a-zâêôîûŵŷáéóíúẃýàèòìùẁỳäëöïüẅÿñA-Z0-9@\.!\?_ ]/u", "", $text);  // delete anything that isn't one of these characters
	$text=preg_replace("/(^| )x{1,3} /u", " ", $text); // x, xx, xxx
	//$text=preg_replace("/@\d+/u", "", $text);  remove @0, @1 etc from the word
	$text=preg_replace("/^ +/u", "", $text);
    $text=preg_replace("/ +/u", " ", $text);
	return $text;
}






?>