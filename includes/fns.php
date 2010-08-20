<?php

// Set up language identifiers here.  These are the items that come after the @ or @s: attached to the word, eg gente@3 (old style), party@s:cy&en.  The import splits these off so that the attached word can be looked up in the appropriate dictionary.
$eslg=array("3", "", "es");
$enlg=array("2", "en");
$cylg=array("1", "cy");

function get_filename()
// Turn the filename given to an individual script into a filename which can be used as a prefix for subsequent tables and files, and returns filepath and filename, along with tablenames based on the latter.  A directory to hold the output files is created if it does not already exist.
// $chafile = the argument to the script; this is usually a full path to a file, but it can also be the file itself
// $filename = the filename stripped of any extension like  .cha, .cex or .txt
// $utterances = $filename_cgutterances - the table holding the utterances from the filename
// $words = $filename_cgwords - the table holding the words from the utterances
// $cgfinished = $filename_cgfinished - the table holding the autoglossed (POS-tagged) words
{
	$chafile=$_SERVER['argv'][1];

	if (isset($chafile))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $chafile)));  // remove the extension
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
// Drop the specified table so that it can be recreated.
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

function scan_tiers($chafile, $filename)
// Scan the chat file to see which subordinate tiers (beginning with %) are used.  Write these to a file so that they can be referred to when building the tables.
{
    $sqltiers="";
    $filetiers=array();
    //$filename=strtolower(basename(preg_replace("/\..*$/", "", $chafile))); 
    $lines=file($chafile,FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line)
    {
        if (preg_match("/^%.{3}:/U", $line))
        {
            $othertier=preg_split("/:/", $line, 2);
            $tier[]=preg_replace("/%/", "", $othertier[0]);
        }
    }
    $filetiers = array_unique($tier);
    while (list($key, $val) = each($filetiers))
    {
        $sqltiers .= "$val\n";
    }
    $sqltiers=substr($sqltiers, 0, -1);
    
    $fp=fopen("outputs/".$filename."/".$filename."_tiers.txt", "w");
    fwrite($fp, $sqltiers);
    fclose($fp);
}

function tier_fields($filename, $format)
// Read the tier file and create appropriate entries for the tiers in the table creation SQL.  $format is an SQL datatype like "text" or "character varying(250)".
{
    $sqlfields="";
    $lines=file("outputs/".$filename."/".$filename."_tiers.txt", FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line)
    {
        $sqlfields .= trim($line)." ".$format.", ";
    }
    $sqlfields=substr($sqlfields, 0, -2);

    return $sqlfields;
}

function fix_punctuation($text)
// Sort out punctuation
{
	$text=preg_replace("/(\.+)\.(\s)/", "$1 .$2", $text);  // split period from +...
	$text=preg_replace("/(\.+)\?(\s)/", "$1 .$2", $text);  // split qmark from +..?
	$text=preg_replace("/(\/?\/)\./", "$1 .", $text);  // split period from +/. and  +"/. and +//.
	$text=preg_replace("/(\")\./", "$1 .", $text);  // split period from +".
	$text=preg_replace("/(\+\!)\?/", "$1 ?", $text);  // split qmark from +!?

	return $text;
}

function fix_transcription($text)
// Apparent transcription errors
{
	$text=preg_replace("/(\d)\./", "$1 .", $text);  // split period from a preceding @1 or @2; examples seem to be errors - usually the period has a space between it and the last word of the utterance; also need to cover new-style language tags
	//$text=preg_replace("/([a-z])\./", "$1 .", $text);  // split period from preceding a-z; we should limit this to the end of the utterance, but we can't use $ here because it is not the end of the line; if necessary, we can do a tighter regex later; this will also catch patagonia-style language tags which have a period immediately following in error; unfortunately, this craps all over siarad-style glosses - it separates the the verb from the tags, so that we get "say .2S.IMPER", which is then imported incorrectly over two slots
	$text=preg_replace("/(\d)\[/", "$1 [", $text);  // split an opening square bracket from the preceding tag
	$text=preg_replace("/(\%gls:\t)\s/", "$1", $text);  // remove errant space from beginning of gloss lines if it occurs
	
	return $text;
}

function clean_utterance($text)
// Note that the order of these is important.
// Remember to move any tags using & out of the way in the first line, and move them back before the main cleaning line.
{
	$text=preg_replace("/cy&es/u", "cy#es", $text); // move language tag out of the way
	$text=preg_replace("/cy&en/u", "cy#en", $text); // move language tag out of the way
	$text=preg_replace("/en&es/u", "en#es", $text); // move language tag out of the way

	$text=preg_replace("/\[.[^\]]*\]/u", "", $text); // anything in square brackets
	$text=preg_replace("/&.[^ ]* /u", "", $text);  // &=<laugh>, &k, &s, &ɬ, etc; ignore & by itself
	$text=preg_replace("/(\.|!|\?)[^$]/u", "", $text); // periods or exclamation marks that are not at the end of the sentence

	$text=preg_replace("/cy#es/u", "cy&es", $text); // move language tag back again
	$text=preg_replace("/cy#en/u", "cy&en", $text); // move language tag back again
	$text=preg_replace("/en#es/u", "en&es", $text); // move language tag back again

	$text=preg_replace("/[^a-zâêôîûŵŷáéóíúẃýàèòìùẁỳäëöïüẅÿñA-ZÂÊÔÎÛŴŶÁÉÓÍÚẂÝÀÈÒÌÙẀỲÄËÖÏÜẄŸ0-9@\.!\?_&: ]/u", "", $text);  // delete anything that isn't one of these characters: & and : added to deal with Patagonia tags: @s:cy&es

    $text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this, probably because of the subpattern being captured
	$text=preg_replace("/(^| )x{1,3}( |$)/u", " ", $text); // x, xx, xxx
	//$text=preg_replace("/@\d+/u", "", $text);  // remove @0, @1 etc from the word - Siarad only - not required for the db - this is purely cosmetic on the output file - the split is handled by the routine in rewrite_utterances.php
	$text=preg_replace("/^ +/u", "", $text);
    $text=preg_replace("/ +/u", " ", $text);

	return $text;
}

function clean_gls($text)
{
    $text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this, probably because of the subpattern being captured
    $text=preg_replace("/(^| )x{1,3}( |$)/u", " ", $text); // x, xx, xxx - need to account for when x appears in first or last position
    $text=preg_replace("/ +/u", " ", $text);  // to catch places where there is more than one space in the gloss line
    $text=trim(pg_escape_string($text));  // to deal with errant LRs on a few of the entries
    
    return $text;
}

function clean_mor($text)
{
    $text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this, probably because of the subpattern being captured
    $text=preg_replace("/(^| )x{1,3}( |$)/u", " ", $text); // x, xx, xxx - need to account for when x appears in first or last position
    $text=preg_replace("/ +/u", " ", $text);  // to catch places where there is more than one space in the gloss line
    $text=trim(pg_escape_string($text));  // to deal with errant LRs on a few of the entries
    
    return $text;
}


function detectUTF8($string)
{
    return preg_match('%(?:
        [\xC2-\xDF][\x80-\xBF]             # non-overlong 2-byte
        |\xE0[\xA0-\xBF][\x80-\xBF]        # excluding overlongs
        |[\xE1-\xEC\xEE\xEF][\x80-\xBF]{2} # straight 3-byte
        |\xED[\x80-\x9F][\x80-\xBF]        # excluding surrogates
        |\xF0[\x90-\xBF][\x80-\xBF]{2}     # planes 1-3
        |[\xF1-\xF3][\x80-\xBF]{3}         # planes 4-15
        |\xF4[\x80-\x8F][\x80-\xBF]{2}     # plane 16
        )+%xs', 
    $string);
}

?>
