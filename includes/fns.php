<?php

function get_filename()
// Uses the filename given to an individual script into a filename which can be used as a prefix for subsequent tables and files, and returns filepath and filename, along with tablenames based on the latter.  A directory to hold the output files is created if it does not already exist.
{
	$chafile=$_SERVER['argv'][1];

	if (isset($chafile))
	{
		$filename=strtolower(basename($chafile, ".cha"));
		echo "*\n*\nAutoglossing $chafile. The prefix is $filename - outputs are in outputs/$filename/.\n*\n*\n";
	}
	else
	{
		echo "*\n*\nYou need to specify a file to autogloss\n*\n*\n";
	}
	$utterances=strtolower($filename."_cgutterances");
	$words=strtolower($filename."_cgwords");
	$cgfinished=strtolower($filename."_cgfinished");
	exec("mkdir -p outputs/$filename");  // -p suppresses the error message given when the dir already exists
	return array($chafile, $filename, $utterances, $words, $cgfinished);
}

function drop_existing_table($table)
// Drops the specified table so that it can be recreated.
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
// Note that the order of these is important.
// Remember to move any tags using & out of the way in the first line, and move them back before the main cleaning line.
{
	$text=preg_replace("/cy&es/u", "cy#es", $text); // move language tag out of the way
	$text=preg_replace("/cy&en/u", "cy#en", $text); // move language tag out of the way
	$text=preg_replace("/en&es/u", "en#es", $text); // move language tag out of the way

	$text=preg_replace("/\[.+\]/u", "", $text); // anything in square brackets  - this is too greedy - need to reign it back
	$text=preg_replace("/&.[^ ]+ /u", "", $text);  // &=<laugh>
	$text=preg_replace("/(\.|!)[^$]/u", "", $text); // periods or exclamation marks that are not at the end of the sentence

	$text=preg_replace("/cy#es/u", "cy&es", $text); // move language tag back again
	$text=preg_replace("/cy#en/u", "cy&en", $text); // move language tag back again
	$text=preg_replace("/en#es/u", "en&es", $text); // move language tag back again


	$text=preg_replace("/[^a-zâêôîûŵŷáéóíúẃýàèòìùẁỳäëöïüẅÿñA-Z0-9@\.!\?_&: ]/u", "", $text);  // delete anything that isn't one of these characters: & and : added to deal with Patagonia tags: @s:cy&es

	$text=preg_replace("/(^| )x{1,3} /u", " ", $text); // x, xx, xxx
	//$text=preg_replace("/@\d+/u", "", $text);  remove @0, @1 etc from the word
	$text=preg_replace("/^ +/u", "", $text);
    $text=preg_replace("/ +/u", " ", $text);

	return $text;
}

?>
