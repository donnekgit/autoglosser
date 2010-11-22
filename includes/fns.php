<?php

/*
Copyright Kevin Donnelly 2010.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// Set up language identifiers here.  These are the items that come after the @ or @s: attached to the word, eg gente@3 (old style), party@s:cy&en.  The import splits these off so that in write_cohorts.php the attached word can be looked up in the appropriate dictionary.  Under the new system of marking, you need to specify which of the languages is the main language of the text by placing the empty marker ("") in the relevant array.  thus, if the main language is Welsh, put it in the $cylg array; if it is Spanish, put it in the $eslg array.  Note also that if you have tags for indeterminate words (ie words that do not occur in any of the language dictionaries, or where it is unclear which language they belong to), they should be listed in the $zerolg array (as here: cy&es).  Words with "mixed" morphemes also go here.
$zerolg=array("0", "cy&es", "en&es", "cy&en", "en&es+en", "en&es+es", "cy&es+cy", "cy&es+es", "cy&en+en", "cy&en+cy");
$cylg=array("1", "cy", "cy+en", "cy+es");
$enlg=array("2", "en", "en+es", "en+cy", "s");
$eslg=array("3", "es", "es+en", "es+cy", "");

// Set up the grammar file here.
$gram_file="en_es";

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
	exec("mkdir -p outputs/$filename");  // -p suppresses the error message given when the dir already exists, and also means it won't be created if it already exists

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
    if (count($lines)>0)
    {  
        foreach ($lines as $line)
        {
            $sqlfields .= trim($line)." ".$format.", ";
        }
    }
    else
    {
        $sqlfields="";
    }

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

function lineclean_surface($text)
// Remove markers and non alphanumeric characters from the surface text.
// Note that the order of the following lines is important.
// Remember to move any tags using & out of the way in the first line, and move them back before the main cleaning line.
{
    $text=preg_replace("/cy&es/u", "cy#es", $text); // move language tag out of the way
    $text=preg_replace("/cy&en/u", "cy#en", $text); // move language tag out of the way
    $text=preg_replace("/en&es/u", "en#es", $text); // move language tag out of the way

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.

    $text=preg_replace("/ (\[\/+\])/u", "~$1", $text); // Link a backtracking word to the following [/] or [//] marker with a tilde.
    $text=preg_replace("/<.[^>]+>/u", "", $text); // Remove backtracking words in angle brackets.

    $text=preg_replace("/\[.[^\]]*\]/u", "", $text); // Remove anything in square brackets.
    $text=preg_replace("/&.[^ ]* /u", "", $text);  // &=<laugh>, &k, &s, &ɬ, etc; ignore & by itself.
    $text=preg_replace("/(\.|!|\?)[^$]/u", "", $text); // Remove periods or exclamation marks that are not at the end of the sentence.

    $text=preg_replace("/(^| ).[^~| ]+~ /u", " ", $text); // Remove backtracking words with an attached tilde.

    $text=preg_replace("/cy#es/u", "cy&es", $text); // move language tag back again
    $text=preg_replace("/cy#en/u", "cy&en", $text); // move language tag back again
    $text=preg_replace("/en#es/u", "en&es", $text); // move language tag back again

    $text=preg_replace("/[^a-zâêôîûŵŷáéóíúẃýàèòìùẁỳäëöïüẅÿñA-ZÂÊÔÎÛŴŶÁÉÓÍÚẂÝÀÈÒÌÙẀỲÄËÖÏÜẄŸ0-9@\.!\?_'&: ]/u", "", $text);  // Delete anything that isn't one of these characters.  Note that "&" and ":" were added to deal with Patagonia tags: @s:cy&es. Apostrophe also added because otherwise elided words don't show up properly.

    $text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this, probably because of the subpattern being captured
    $text=preg_replace("/(^| )x{1,3}( |$)/u", " ", $text); // x, xx, xxx

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.
   
    return $text;
}

function lineclean_gls($text)
// Make corrections to the %gls tier as a whole, before it is segmented into words.
{
    $text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this, probably because of the subpattern being captured
    $text=preg_replace("/(^| )x{1,3}( |$)/u", " ", $text); // x, xx, xxx - need to account for when x appears in first or last position

    $text=preg_replace("/ +/u", " ", $text);  // to catch places where there is more than one space in the gloss line

    $text=trim(pg_escape_string($text));  // Remove errant LRs on a few of the entries
    
    return $text;
}

function wordclean_gls($text)
// Make corrections to the individual words in the %gls tier.
{
    // This is a dummy function - add code here.
    return $text;
}

function lineclean_mor($text)
// Make corrections to the %gls tier as a whole, before it is segmented into words.
{
    $text=preg_replace("/[+\/]/u", "", $text);  // Remove errant markup: +. /.

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.

    $text=preg_replace("/(=)(\w+)( )(\w+)( )(\w+)(\|)/u", "$1$2_$4$5$6$7", $text);  // Replace spaces in two-word lexemes (eg ticket inspector) with an underline in order to avoid incorrect slot assignment.  Note that this regex only deals with two-word lexemes - it may need to be extended if there are lemmas of three words or longer (poor dictionary editing in my view).

    return $text;
}

function wordclean_mor($text)
// Make corrections to the individual words in the %mor tier.
{
    // This is a dummy function - add code here.
    // Note that if you call wordclean_xxx() for one tier, it must be available for all tiers, even if it is only a dummy function like this.
    return $text;
}

function lineclean_gra($text)
// Make corrections to the %gra tier as a whole, before it is segmented into entries.
{
    return $text;
}

function wordclean_gra($text)
// Make corrections to the individual entries in the %gra tier.
{
    // This is a dummy function - add code here.
    return $text;
}

function segment_clitics($text)
// segment the clitic pronouns from the verbform in Spanish
{
    $text=preg_replace("/l(a|e|o)(s?)$/u", "#l$1$2", $text);
    $text=preg_replace("/(me|te|se|nos)$/u", "#$1", $text);
    $text=preg_replace("/(?<!(l|n))os$/u", "#os", $text);
    $text=preg_replace("/(me|te|se|nos|os)(?=#l(a|e|o)s?)/u", "@$1", $text);
    $text=preg_replace("/(te|se|os)(?=#(me|nos))/u", "@$1", $text); 
    $text=preg_replace("/(se)(?=#(te|os))/u", "@$1", $text);

    return $text;
}

function clitic_pos($text)
// rewrite the Spanish clitic pronouns to give POS information
{
    $text=preg_replace("/la(?!s)/u", "prn.f.3s", $text);
    $text=preg_replace("/las/u", "prn.f.3p", $text);
    $text=preg_replace("/le(?!s)/u", "prn.mf.3s", $text);
    $text=preg_replace("/les/u", "prn.mf.3p", $text);
    $text=preg_replace("/lo(?!s)/u", "prn.m.3s", $text);
    $text=preg_replace("/los/u", "prn.m.3p", $text);
    $text=preg_replace("/me/u", "prn.mf.1s", $text);
    $text=preg_replace("/te/u", "prn.mf.2s", $text);
    $text=preg_replace("/se/u", "prn.mf.3s", $text);
    $text=preg_replace("/nos/u", "prn.mf.1p", $text);
    $text=preg_replace("/os/u", "prn.mf.2p", $text);

    return $text;
}

function pluralise($text)
// Generate the English plural of a word.  This does not catch every plural, but it should get around 90% of them.  Individual words can be added along the lines of the first few lines, but if they are one-of-a-kinds they are unlikely to be amenable to the pluraliser anyway.  Where the plural does not end in -s, we add # as an "end-of-word" marker to prevent the default "s" being added - it is stripped by the last rule.
{
    $text=preg_replace("/matrix$/", "matrices", $text); // matrix
    $text=preg_replace("/(ind|vert)ex$/", "$1ices", $text); // index, vertex
    $text=preg_replace("/(potat|tomat)o$/", "$1oes", $text); // potato, tomato
    $text=preg_replace("/(m|l)ouse$/", "$1ice#", $text); // mouse, louse
    $text=preg_replace("/man$/", "men#", $text); // *man
    $text=preg_replace("/person$/", "people#", $text); // *person
    $text=preg_replace("/child$/", "children#", $text); // child
    $text=preg_replace("/genus$/", "genera#", $text); // genus
    $text=preg_replace("/money$/", "monies#", $text); // money
    $text=preg_replace("/(stimul|radi)us$/", "$1i#", $text); // stimulus, radius
    $text=preg_replace("/us$/", "$1uses", $text); // bus, virus, octopus, status, corpus
    $text=preg_replace("/um$/", "a#", $text); // datum, medium, maximum
    $text=preg_replace("/sh$/", "shes", $text); // ash
    $text=preg_replace("/ch$/", "ches", $text); // switch
    $text=preg_replace("/x$/", "xes", $text); // fox
    $text=preg_replace("/ece$/", "eces", $text); // piece, fleece
    $text=preg_replace("/([^e])se$/", "$1ses", $text); // grouse, crease
    $text=preg_replace("/ese$/", "ese#", $text); // Pekinese
    $text=preg_replace("/ss$/", "sses", $text); // process
    $text=preg_replace("/as$/", "ases", $text); // alias
    $text=preg_replace("/is$/", "es", $text); // basis, axis, crisis
    $text=preg_replace("/(?<=[^ae])y$/", "ies", $text); //ability, query, controversy, energy, etc
    $text=preg_replace("/f$/", "ves", $text); // hoof, loaf, turf, dwarf
    $text=preg_replace("/([^s|#])$/", "$1s", $text); // default (except where the word already ends in s)
    $text=preg_replace("/#$/", "", $text); // strip the "end-of-word" character

    return $text;
}

function de_soft($text)
// Remove Welsh soft mutations so that the demutated word can be looked up.  Note that the order of these regex replacements is significant - letters in the regex must be placed before their occurrence as replacements.
{
    $text=preg_replace("/^g/", "c", $text);
    $text=preg_replace("/^G/", "C", $text);
    $text=preg_replace("/^l/", "ll", $text);
    $text=preg_replace("/^L/", "Ll", $text);
    $text=preg_replace("/^r/", "rh", $text);
    $text=preg_replace("/^R/", "Rh", $text);
    $text=preg_replace("/^l([^l])/", "gl", $text);
    $text=preg_replace("/^L([^l])/", "Gl", $text);
    $text=preg_replace("/^r([^h])/", "gr", $text);
    $text=preg_replace("/^R([^h])/", "Gr", $text);
    $text=preg_replace("/^([aeoiuwyïŵŷ])/", "g$1", $text);
    $text=preg_replace("/^([AEOIUWYÏŴŶ])/", "G$1", $text);
    $text=preg_replace("/^f/", "[mb]", $text);
    $text=preg_replace("/^F/", "[MB]", $text);
    $text=preg_replace("/^b/", "p", $text);
    $text=preg_replace("/^B/", "P", $text);
    $text=preg_replace("/^d([^d])/", "t$1", $text);
    $text=preg_replace("/^D([^d])/", "T$1", $text);
    $text=preg_replace("/^dd/", "d", $text);
    $text=preg_replace("/^Dd/", "D", $text);

    return $text;
}

function de_nas($text)
// Remove Welsh nasal mutations so that the demutated word can be looked up.
{
    $text=preg_replace("/^ngh/", "c", $text);
    $text=preg_replace("/^Ngh/", "C", $text);
    $text=preg_replace("/^mh/", "p", $text);
    $text=preg_replace("/^Mh/", "P", $text);
    $text=preg_replace("/^nh/", "t", $text);
    $text=preg_replace("/^Nh/", "T", $text);
    $text=preg_replace("/^ng/", "g", $text);
    $text=preg_replace("/^Ng/", "G", $text);
    $text=preg_replace("/^m/", "b", $text);
    $text=preg_replace("/^M/", "B", $text);
    $text=preg_replace("/^n/", "d", $text);
    $text=preg_replace("/^N/", "D", $text);
    
    return $text;
}

function de_asp($text)
// Remove Welsh aspirate mutations so that the demutated word can be looked up.
{
    $text=preg_replace("/^ch/", "c", $text);
    $text=preg_replace("/^Ch/", "C", $text);
    $text=preg_replace("/^ph/", "p", $text);
    $text=preg_replace("/^Ph/", "P", $text);
    $text=preg_replace("/^th/", "t", $text);
    $text=preg_replace("/^Th/", "T", $text);

    return $text;
}

function de_h($text)
// Remove Welsh h-mutation word-initially.
{
    $text=preg_replace("/^h/", "", $text);

    return $text;
}

?>

<?php
function lineclean_com($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_com($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_eng($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_eng($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_tim($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_tim($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_add($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_add($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_exp($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_exp($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_par($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_par($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
