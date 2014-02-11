<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// Set up language identifiers here.  These are the items that come after the @ or @s: attached to the word, eg gente@3 (old style), party@s:cy&en.  The import splits these off so that in write_cohorts.php the attached word can be looked up in the appropriate dictionary.  Under the new system of marking with precodes, you need to specify which of the languages is the main language of the text by placing the empty marker ("") in the relevant array - cgimport.php contains code to do this automatically by inspecting the file header.  Note that if you have tags for indeterminate words (ie words that occur in the dictionaries of two languages), they should be listed in the $zerolg array.  Words with "mixed" morphemes also go here.
$zerolg=array("0", "cy&es", "en&es", "cy&en", "en&es+en", "en&es+es", "cy&es+cy", "cy&es+es", "cy&en+en", "cy&en+cy", "cym+eng", "eng+cym",  "spa+cym", "cym+spa", "eng&spa", "cym&eng", "cym&spa");
$cylg=array("1", "cy", "cy+en", "cy+es", "cym");
$enlg=array("2", "en", "en+es", "en+cy", "eng");
$eslg=array("3", "es", "es+en", "es+cy", "spa");

// Set up the grammar file here.
$gram_file="en_es";
//$gram_file="eng";

function query($sql)
// simplify the query writing
// use this as: $result=query("select * from table");
{
    global $db_handle;
    return pg_query($db_handle,$sql);
}

function cig_query($sql)
// simplify the query writing
// use this as: $result=query("select * from table");
{
    global $db_handle3;
    return pg_query($db_handle3,$sql);
}

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
// 		echo "Processing $chafile...\n\n";
	}
	else
	{
		echo "*\n*\nYou need to specify a file to handle.\n*\n*\n";
	}
	$utterances=strtolower($filename."_cgutterances");
	$words=strtolower($filename."_cgwords");
	$cgfinished=strtolower($filename."_cgfinished");
	exec("mkdir -p outputs/$filename");  // -p suppresses the error message given when the dir already exists, and also means it won't be created if it already exists

	return array($chafile, $filename, $utterances, $words, $cgfinished);
}

function drop_existing_table($table)
// Drop the specified table so that it can be recreated.
// or: SELECT * FROM pg_tables WHERE tablename = 'mytable' AND schemaname = 'myschema';
// use true instead of * if preferred
// and clause does not work in PPA
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

function add_column_if_not_exist($table, $column)
// Add a column to the specified table if the table does not already contain that column.
{
	global $db_handle;
	$sql_exists="select count(*) as count from information_schema.columns where table_name='$table' and column_name='$column'";
	$result_exists=pg_query($db_handle, $sql_exists);
	$row_exists=pg_fetch_object($result_exists);
	if ($row_exists->count < 1)
	{
		//echo "There is no column $column - adding one";
		$sql_addcol="alter table $table add column $column character varying(20);";
		$result_addcol=pg_query($db_handle, $sql_addcol);
	}
	else
	{
		//echo "Column $column already exists";
		//exit;
	}
}

function add_integer_column_if_not_exist($table, $column)
// Add a column to the specified table if the table does not already contain that column.
{
	global $db_handle;
	$sql_exists="select count(*) as count from information_schema.columns where table_name='$table' and column_name='$column'";
	$result_exists=pg_query($db_handle, $sql_exists);
	$row_exists=pg_fetch_object($result_exists);
	if ($row_exists->count < 1)
	{
		$sql_addcol="alter table $table add column $column integer;";
		$result_addcol=pg_query($db_handle, $sql_addcol);
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
// WRONG!!  The unspaced versions are standard CHAT end-markers, so they should not be "corrected".
// Retained here for reference.  These regexes are also defective, in that the first four are not limited to post-+ sequences.  The first, for instance, will affect line internal ellipsis in the translation tier if it is not confined to the surface tier.
{
	$text=preg_replace("/(\.+)\.(\s)/", "$1 .$2", $text);  // split period from +...
	$text=preg_replace("/(\.+)\?(\s)/", "$1 ?$2", $text);  // split qmark from +..?
	$text=preg_replace("/(\/?\/)\./", "$1 .", $text);  // split period from +/. and  +"/. and +//.
	$text=preg_replace("/(\")\./", "$1 .", $text);  // split period from +".
	$text=preg_replace("/(\+\!)\?/", "$1 ?", $text);  // split qmark from +!?
	return $text;
}

function revert_punctuation($text)
// Revert mistaken punctuation corrections.
{
	$text=preg_replace("/\+\.\. \.( )/", "+...$1", $text);  // fix +...
	$text=preg_replace("/\+\.\. \?( )/", "+..?$1", $text);  // fix +..?
	$text=preg_replace("/\+\/ \.( )/", "+/.$1", $text);  // fix +/.
	$text=preg_replace("/\+\/\/ \.( )/", "+//.$1", $text);  // fix +//.
	$text=preg_replace("/\+\"\/ \.( )/", "+\"/.$1", $text);  // fix +"/.
	$text=preg_replace("/\+\" \.( )/", "+\".$1", $text);  // fix +".
	$text=preg_replace("/\+\! \?( )/", "+!?$1", $text);  // fix +!?
	$text=preg_replace("/\.\. \. /", "... ", $text);  // fix ...
	return $text;
}

function fix_transcription($text)
// Apparent transcription errors.  Formerly used in cgimport.php, but omitted now because its relevance to the new corpora is much less.  The gloss line fix, for instance, should be put into prepare_file.php.
{
	$text=preg_replace("/(\d)\./", "$1 .", $text);  // split period from a preceding @1 or @2; examples seem to be errors - usually the period has a space between it and the last word of the utterance; also need to cover new-style language tags
	//$text=preg_replace("/([a-z])\./", "$1 .", $text);  // split period from preceding a-z; we should limit this to the end of the utterance, but we can't use $ here because it is not the end of the line; if necessary, we can do a tighter regex later; this will also catch patagonia-style language tags which have a period immediately following in error; WRONG - unfortunately, this craps all over siarad-style glosses - it separates the the verb from the tags, so that we get "say .2S.IMPER", which is then imported incorrectly over two slots
	$text=preg_replace("/(\d)\[/", "$1 [", $text);  // split an opening square bracket from the preceding tag
	$text=preg_replace("/(\%gls:\t)\s/", "$1", $text);  // remove errant space from beginning of gloss lines if it occurs	
	return $text;
}

function lineclean_surface($text)
// Remove markers and non-alphanumeric characters from the surface text.
// Note that the order of the following lines is important.
// Language tags using + are converted to % and back again.  Language tags using & need to be entered in the list of escaped sequences.
{
    //$text=preg_replace("/\+/u", " ", $text);  // For CIG files.

	$text=preg_replace("/([a-z]{2,3})\+([a-z]{2,3})/", "$1%$2", $text);  // Move language tags containing + out of the way (the main cleaning line removes all +s).
	$text=preg_replace("/([a-z]{2,3})&([a-z]{2,3})/", "$1%%$2", $text);  // Move language tags containing & out of the way (the main cleaning line removes all &s).  NOTE - no longer required?

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.

	// Uncomment for MOR (note that this is not the freq convention - it counts ALL words, including those in backtracks)
    //$text=preg_replace("/\+</u", " ", $text);  // Get rid of +<
    //$text=preg_replace("/ (\[\/+\])/u", "~$1", $text); // Link a backtracking word to the following [/] or [//] or [///] marker with a tilde.
    //$text=preg_replace("/<.[^( |>)]+>/u", "", $text); // Remove backtracking words in angle brackets.  The space in ( |>) is to handle +< - this gets taken as the opening angle bracket otherwise, so that "+< yo tengo una amiguita que es dueña <de un> [//] de un dealer@s:eng ." gets truncated to "de un dealer@s:eng ."

    $text=preg_replace("/\[.[^\]]*\]/u", "", $text); // Remove anything in square brackets.
	// Remember to add your language tags here:
    $text=preg_replace("/&.[^ ]* /u", "", $text);  // &=<laugh>, &k, &s, &ɬ, etc; ignore & by itself (the ones before a language tag have been moved out of the way by the line at the top)
    $text=preg_replace("/(\.|!|\?)[^\?$]/u", "", $text); // Remove periods or exclamation/question marks that are not at the end of the sentence.  NOTE: This converts the terminator +!? to !? by retaining ! before ?.  Otherwise, the !? in +!? gets removed completely, then the + gets removed by the "delete everything else" line below, leaving a space, which gets interpreted as an unknown word :-(

	// Uncomment for MOR convention (note that this is not the freq convention - it counts ALL words, including those in backtracks)
    //$text=preg_replace("/(^| ).[^~| ]*~ /u", " ", $text); // Remove backtracking words with an attached tilde.
	//$text=preg_replace("/(^| ).[^~| ]*~ /u", " ", $text); // Remove backtracking words with an attached tilde.
	// The above is run twice to catch sequences like "i(f) [/] i(f) [/] if@2 she@2 gets@2".  The regex acts on the whole line, so in this case it will only make one match in the line.  The first "i(f)~"will be deleted, leaving the second "i(f)~" to be dealt with by the general deletion below, converting it to "if".  The output will therefore be "if if@2 she@2 gets@2".  Repeating the regex solves this.

    $text=preg_replace("/[^a-zâêôîûŵŷáéóíúẃýàèòìùẁỳäëöïüẅÿñA-ZÂÊÔÎÛŴŶÁÉÓÍÚẂÝÀÈÒÌÙẀỲÄËÖÏÜẄŸ0-9@\.!\?_'&: %γχδ]/u", "", $text);  // Delete anything that isn't one of these characters.  Note that "&" and ":" were added to deal with Patagonia tags: @s:cy&es. Apostrophe also added because otherwise elided words don't show up properly.  % added to cover language tags like spa%%cym (< spa+cym).

	$text=preg_replace("/([a-z]{2,3})%([a-z]{2,3})/", "$1+$2", $text);  // Move language tags containing + back again.
	$text=preg_replace("/([a-z]{2,3})%%([a-z]{2,3})/", "$1&$2", $text);  // Move language tags containing & back again.

    //$text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this
    //$text=preg_replace("/xxx xxx/u", " ", $text);  // the regex below misses this
    $text=preg_replace("/(?:^| )x{2,3}(?: |$)/u", " ", $text); // xx, xxx - marking text that is unintelligible
    $text=preg_replace("/(^| )w{2,3}( |$)/u", " ", $text); // ww, www - marking text that is untranscribed because the speaker did not give consent.

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.
   
    return $text;
}

function lineclean_corpus($text)
// Remove markers, language tags and non-alphanumeric characters from the surface text, for use in Eurfa.
// Note that the order of the following lines is important.
// Language tags using + are converted to % and back again.  Language tags using & need to be entered in the list of escaped sequences.
{
	$text=preg_replace("/([a-z]{2,3})\+([a-z]{2,3})/", "$1%$2", $text);  // Move language tags containing + out of the way (the main cleaning line removes all +s).
	$text=preg_replace("/([a-z]{2,3})&([a-z]{2,3})/", "$1%%$2", $text);  // Move language tags containing & out of the way (the main cleaning line removes all &s).  NOTE - no longer required?

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.

	$text=preg_replace("/\[.[^\]]*\]/u", "", $text); // Remove anything in square brackets.
    $text=preg_replace("/&.[^ ]* /u", "", $text);  // &=<laugh>, &k, &s, &ɬ, etc; ignore & by itself (the ones before a language tag have been moved out of the way by the line at the top)
    $text=preg_replace("/(\.|!|\?)[^\?$]/u", "", $text); // Remove periods or exclamation/question marks that are not at the end of the sentence.  NOTE: This converts the terminator +!? to !? by retaining ! before ?.  Otherwise, the !? in +!? gets removed completely, then the + gets removed by the "delete everything else" line below, leaving a space, which gets interpreted as an unknown word :-(

	$text=preg_replace("/[^a-zâêôîûŵŷáéóíúẃýàèòìùẁỳäëöïüẅÿñA-ZÂÊÔÎÛŴŶÁÉÓÍÚẂÝÀÈÒÌÙẀỲÄËÖÏÜẄŸ0-9@\.!\?_'&: %\(\)]/u", "", $text);  // Delete anything that isn't one of these characters.  Note that "&" and ":" were added to deal with Patagonia tags: @s:cy&es. Apostrophe also added because otherwise elided words don't show up properly.  % added to cover language tags like spa%%cym (< spa+cym).

	$text=preg_replace("/([a-z]{2,3})%([a-z]{2,3})/", "$1+$2", $text);  // Move language tags containing + back again.
	$text=preg_replace("/([a-z]{2,3})%%([a-z]{2,3})/", "$1&$2", $text);  // Move language tags containing & back again.

	$text=preg_replace("/(?:^| )x{2,3}(?: |$)/u", " ", $text); // xx, xxx - marking text that is unintelligible
    $text=preg_replace("/(^| )w{2,3}( |$)/u", " ", $text); // ww, www - marking text that is untranscribed because the speaker did not give consent.
    
    $text=preg_replace("/@s:.*\s/U", " ", $text);  // Remove language tags.

	$text=preg_replace("/\( /", " ", $text);  // Remove lonely (s.
	$text=preg_replace("/\(\) /", " ", $text);  // Remove ()s.

    $text=preg_replace("/^ +/u", "", $text);  // Fix spaces at beginning of line.
    $text=preg_replace("/ +/u", " ", $text);  // Fix spaces line-internally.
   
    return $text;
}

function lineclean_im_diana($text)
// Clean lines of IMs for trigger analysis.
{
    $text=preg_replace("/(^| )ah(h|a)?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )a_ha@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )argh@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )aww?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )aye@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )bl?(a|u)h@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )bleugh@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )boing@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )drat(ia)?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )d(o|u)h@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )e(h|w)@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )erm?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )e?ugh@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )grr@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )hah?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ha_ha@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )he(h|i|y)?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )hehey@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )h(o|uh)@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )h(m|u|y)m(ph)?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )jiw@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )la_la@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )mmm?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )mm?hm@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )mm_hm@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )nah@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )o(c|h)?h@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )oho@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ooo?(f|h|ph|ps)@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ouch@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ow@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )phew@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ph?oo(ph)?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )pw?ff@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )phwoar?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )sh(h|t)@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )shush@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ssh@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )tsk@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )t(u|w)t@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )u(h|m)@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )uh_(hu|o)h@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )uhh?uh@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )wa(a|h)@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )wff@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )whoah?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )woohoo@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )w(a|o)w@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )y(a|e)y@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ych@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ý@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )yuc?k@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )yum(my)?@s:cym&eng( |$)/u", " ", $text);
    $text=preg_replace("/(^| )ŵps@s:cym&eng( |$)/u", " ", $text);
    return $text;
}

function wordclean_surface($text)
// Make corrections to the individual words in the %gls tier.
{
    $text=preg_replace("/:/u", "", $text);  // Remove length-marking (eg no:)
    return $text;
}

function wordclean_hist($text)
// Make corrections to the individual words in monolingual text in the Historical Corpus.
{
    $text=preg_replace("/[:;,!\?\.\(\)]/u", "", $text);  
    $text=preg_replace("/^''r/u", "yr", $text);
    $text=preg_replace("/^''n/u", "yn", $text);
    $text=preg_replace("/^''m/u", "fy", $text);
    $text=preg_replace("/^''i/u", "ei", $text);
    $text=preg_replace("/^''u/u", "eu", $text);
    $text=preg_replace("/^''w/u", "ei", $text);
    $text=preg_replace("/^i''/u", "i", $text);
    $text=preg_replace("/y''m/u", "ydym", $text);
    $text=strtolower($text);  // This is a kludge which needs to be fixed in the lookup.
    return $text;
}

function wordclean_cig($text)
// Make corrections to the individual words in the CIG corpus.
{
    $text=preg_replace("/^''r/u", "yr", $text);
    $text=preg_replace("/^''n/u", "yn", $text);
    $text=preg_replace("/^''m/u", "ddim", $text);
    $text=preg_replace("/^''i/u", "ei", $text);
    $text=preg_replace("/^''u/u", "eu", $text);
    $text=preg_replace("/^''w/u", "ei", $text);
    $text=preg_replace("/^i''/u", "i", $text);
    $text=preg_replace("/^''o/u", "fo", $text);
    $text=preg_replace("/^''di/u", "wedi", $text);
    $text=preg_replace("/^(''|o)dy/u", "ydy", $text);
    $text=preg_replace("/^''fo/u", "efo", $text);
    $text=preg_replace("/^ma''/u", "mae", $text);
    $text=preg_replace("/^o''dd/u", "oedd", $text);
    $text=preg_replace("/^''te/u", "ynte", $text);
    $text=preg_replace("/^yn(1|2)$/u", "yn", $text);
    $text=preg_replace("/:/u", "", $text);  // Remove length-marking (eg o:h)
    return $text;
}

function lineclean_gls($text)
// Make corrections to the %gls tier as a whole, before it is segmented into words.
{
    $text=preg_replace("/xx xx/u", " ", $text);  // the regex below misses this
    $text=preg_replace("/xxx xxx/u", " ", $text);  // the regex below misses this
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
// Make corrections to the %mor tier as a whole, before it is segmented into words.
{
	$text=preg_replace("/unk\|xxx/u", "", $text);  // Remove instances of 'unk|xxx' - MOR doesn't seem to acknowledge xxx.
	$text=preg_replace("/\+\.{1,2}/u", "", $text);  // Remove instances of +. or +...
	$text=preg_replace("/\+\//u", "", $text);  // Remove instances of +/
	$text=preg_replace("/\//u", "", $text);  // Remove errant markup: /.

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
    $text=preg_replace("/la(?!s)/u", "pron.f.3s", $text);
    $text=preg_replace("/las/u", "pron.f.3p", $text);
    $text=preg_replace("/le(?!s)/u", "pron.mf.3s", $text);
    $text=preg_replace("/les/u", "pron.mf.3p", $text);
    $text=preg_replace("/lo(?!s)/u", "pron.m.3s", $text);
    $text=preg_replace("/los/u", "pron.m.3p", $text);
    $text=preg_replace("/me/u", "pron.mf.1s", $text);
    $text=preg_replace("/te/u", "pron.mf.2s", $text);
    $text=preg_replace("/se/u", "pron.mf.3s", $text);
    $text=preg_replace("/nos/u", "pron.mf.1p", $text);
    $text=preg_replace("/(?<!n)os/u", "pron.mf.2p", $text);
    return $text;
}

function segment_eng($text)
// Segment the clitic pronouns from the verbform.
{
	$text=preg_replace("/^let's$/u", "let#us.pron.1p", $text);  // let's
	$text=preg_replace("/^gonna$/u", "go#to.prep", $text);  // gonna
	$text=preg_replace("/^wanna$/u", "want#to.prep", $text);  // wanna
	$text=preg_replace("/^gotta$/u", "get#to.prep", $text);  // gotta

	// For the elided forms below we need to double the apostrophe in the search pattern.  This is because pg_escape_string in write_cohorts.php adds an additional apostrophe to escape an apostrophe in the word; we need to remove both, otherwise one will get left after the segmentation, and prevent the lookup.
	$text=preg_replace("/''d$/u", "#be.v.cond", $text);  // we'd, he'd, they'd
	$text=preg_replace("/''m$/u", "#be.v.pres", $text);  // I'm
	$text=preg_replace("/''re$/u", "#be.v.pres", $text);  // we're, they're
	$text=preg_replace("/''ll$/u", "#be.v.fut", $text);  // we'll
	$text=preg_replace("/''ve$/u", "#have.v.pres", $text);  // we've, they've
	$text=preg_replace("/''s$/u", "#gb", $text);  // father's, that's, he's
	$text=preg_replace("/''n$/u", "#cp", $text);  // her'n, me'n, his'n, your'n
	$text=preg_replace("/n''t$/u", "#neg", $text);  // aren't, wouldn't, don't

	$text=preg_replace("/(?<!i)ly$/u", "#adv", $text);  // quickly
	$text=preg_replace("/ily$/u", "i#adv", $text);  // happily

	$text=preg_replace("/(?<!e)able$/u", "#a.pot", $text);  // treatable
	$text=preg_replace("/eable$/u", "e#a.pot", $text);  // writeable

	$text=preg_replace("/(er)$/u", "#comp.ag", $text); // shorter, worker
	$text=preg_replace("/(est)$/u", "#adj.sup", $text); // shortest

	$text=preg_replace("/(oo(k|l))ing$/u", "$1#asv", $text);  // look, cool
	$text=preg_replace("/(oo(k|l))ed$/u", "$1#av", $text); 
	$text=preg_replace("/(oo(k|l))s$/u", "$1#pv", $text);

	$text=preg_replace("/(oa(m|n))ing$/u", "$1#asv", $text);  // roam, moan
	$text=preg_replace("/(oa(m|n))ed$/u", "$1#av", $text); 
	$text=preg_replace("/(oa(m|n))s$/u", "$1#pv", $text);

	$text=preg_replace("/(ea(k|n))ing$/u", "$1#asv", $text);  // break, clean
	$text=preg_replace("/(ea(k|n))ed$/u", "$1#av", $text); 
	$text=preg_replace("/(ea(k|n))s$/u", "$1#pv", $text);

	$text=preg_replace("/(ing)ing$/u", "$1#asv", $text);  // bring - but note that whinge will be missegmented
	$text=preg_replace("/(ing)s$/u", "$1#pv", $text);

	$text=preg_replace("/(an|in)ning$/u", "$1#asv", $text);  // plan, spin
	$text=preg_replace("/(an|in)ned$/u", "$1#av", $text); 
	$text=preg_replace("/(an|in)s$/u", "$1#pv", $text);

	$text=preg_replace("/(at|us)ing$/u", "$1e#asv", $text);  // incorporate
	$text=preg_replace("/(at|us)ed$/u", "$1e#av", $text); 
	$text=preg_replace("/(at|us)s$/u", "$1e#pv", $text);

	$text=preg_replace("/(be|ee|do|go)ing$/u", "$1#asv", $text);  // be, see, do, go
	$text=preg_replace("/(ee)s$/u", "$1#pv", $text); // see

	$text=preg_replace("/([^aeiou]{1,2}[aeiou][^aeiou]{1,3}[aeiou]{1,2}(t|r|n|p))ing$/u", "$1#asv", $text);
	// visit, bother, happen, gossip
	$text=preg_replace("/([^aeiou]{1,2}[aeiou][^aeiou]{1,3}[aeiou]{1,2}(t|r|n|p))ed$/u", "$1#av", $text); 
	$text=preg_replace("/([^aeiou]{1,2}[aeiou][^aeiou]{1,3}[aeiou]{1,2}(t|r|n|p))s$/u", "$1#pv", $text); 

	$text=preg_replace("/([^aeiou][aeiou]{1,2}(c|v|ng|nc|p|k|t|r|g|l|n|m|tl|s))ing$/u", "$1e#asv", $text);
	// piece, leave (verb), range, wince, gripe, brake, bite, picture, massage, tile, line, become, subtitle, house, acquire
	$text=preg_replace("/([^aeiou][aeiou]{1,2}(c|v|ng|nc|p|k|t|r|g|l|n|m|tl|s))ed$/u", "$1e#av", $text); 
	$text=preg_replace("/([^aeiou][aeiou]{1,2}(c|v|ng|nc|p|k|t|r|g|l|n|m|tl|s))es$/u", "$1e#pv", $text); 

	$text=preg_replace("/([aeiou](nd|nk|nt|rt|rd|rk|lk|pt|sk|st|gn|ng|ct|gh|ll|w|mp|y))ing$/u", "$1#asv", $text);
	// end, print, think, start, walk,  adapt, ask, test, assign, bang, construct, cough, kill, betray, swallow, play, work
	$text=preg_replace("/([aeiou](nd|nt|nk|rt|rd|rk|lk|pt|sk|st|gn|ng|ct|gh|ll|w|mp|y))ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou](nd|nt|nk|rt|rd|rk|lk|pt|sk|st|gn|ng|ct|gh|ll|w|mp|y))s$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou](?<!i|u)r)ing$/u", "$1#asv", $text);  // bother
	$text=preg_replace("/([aeiou](?<!i|u)r)ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou](?<!i|u)r)s$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ing$/u", "$1#asv", $text);  // breaking - but leaving is wrong, meet
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])s$/u", "$1#pv", $text);  // breaks - but leaves is wrong

	$text=preg_replace("/([aeiou][p|t])[p|t]ing$/u", "$1#asv", $text);  // grip
	$text=preg_replace("/([aeiou](ck))ing$/u", "$1#asv", $text);  // back
	$text=preg_replace("/([aeiou][p|t])[p|t]ed$/u", "$1#av", $text);  // grip
	$text=preg_replace("/([aeiou](ck))ed$/u", "$1#av", $text);  // back
	$text=preg_replace("/([aeiou](ck|p|t))s$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou](ch|sh|x))ing$/u", "$1#asv", $text);  // watch, launch, finish, tax, attach
	$text=preg_replace("/([aeiou](ch|sh|x))ed$/u", "$1#av", $text);
	$text=preg_replace("/([aeiou](ch|sh|x))es$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou]ss)ing$/u", "$1#asv", $text);  // miss
	$text=preg_replace("/([aeiou]ss)ed$/u", "$1#av", $text);
	$text=preg_replace("/([aeiou]ss)es$/u", "$1#pv", $text);

	$text=preg_replace("/(y|u)ing$/u", "$1#asv", $text); // sully, play, continue
	$text=preg_replace("/(i|u)ed$/u", "$1#av", $text);
	$text=preg_replace("/(i|u)es$/u", "$1#pv", $text);  // controversies

	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ing$/u", "$1#asv", $text);  // breaking - but leaving is wrong
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])s$/u", "$1#pv", $text);  // breaks - but leaves is wrong

	// Remember to transfer any changes here to segment_engforin too ...
	$text=preg_replace("/(ee)s$/u", "$1#pl", $text); // employee
	$text=preg_replace("/(sse)s$/u", "$1#pl", $text); // basses
	$text=preg_replace("/(ie)s$/u", "$1#pl", $text); // movie
	$text=preg_replace("/(de)s$/u", "$1#pl", $text); // episode
	$text=preg_replace("/(one)s$/u", "$1#pl", $text); // one

	$text=preg_replace("/(?<![1ieus'])s$/u", "#pv", $text);  // general plural or verb.3s

	return $text;
}

function segment_engforin($text)
// Segment the clitic pronouns from the verbform.
// Remember to transfer any changes here to segment_eng too ...
{	
	//$text=preg_replace("/_i?o/", "#wv", $text);  // Segment _io/_o endings in Siarad transcriptions, and mark as Welsh verb.
	// Better kept in zero_lookup.php

	$text=preg_replace("/(ee)s$/u", "$1#pl", $text); // employee
	$text=preg_replace("/(ss)es$/u", "$1#pl", $text); // basses
	$text=preg_replace("/(ie)s$/u", "$1#pl", $text); // movie
	$text=preg_replace("/(de)s$/u", "$1#pl", $text); // episode
	$text=preg_replace("/(one)s$/u", "$1#pl", $text); // one
	$text=preg_replace("/(?<![1ieus'])s$/u", "#pl", $text);  // general plural
	return $text;
}

function fix_seg($text)
// Rewrite the initial part to account for spelling corrections                                                            
{
	$text=preg_replace("/i$/u", "y", $text);  // happi > happy
	$text=preg_replace("/(?<!yo)u$/u", "ue", $text);  // continu > continue

	$text=preg_replace("/iv$/u", "if/ve", $text);  // liv > life/live
	$text=preg_replace("/(mov|zomb)y$/u", "$1ie", $text);  // movy > movie

	$text=preg_replace("/^(d|l|t|v)y$/u", "$1ie", $text);  // die, lie, tie, vie, movie, zombie

	$text=preg_replace("/^wo$/u", "will", $text);  // won't
	$text=preg_replace("/^ca$/u", "can", $text);  // can't
	$text=preg_replace("/^ai$/u", "is", $text);  // ain't
	$text=preg_replace("/^sha$/u", "shall", $text);  // ain't

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
    $text=preg_replace("/^r/", "rh", $text);
    $text=preg_replace("/^R/", "Rh", $text);
    $text=preg_replace("/^l([^l])/", "[gl]l$1", $text);
    $text=preg_replace("/^L([^l])/", "[GL]l$1", $text);
    $text=preg_replace("/^r([^h])/", "gr", $text);
    $text=preg_replace("/^R([^h])/", "Gr", $text);
    $text=preg_replace("/^([aeoiuwyïŵŷ])/", "g$1", $text);
    $text=preg_replace("/^([AEOIUWYÏŴŶ])/e", "G.strtolower('$1')", $text);  // we need to lowercase the now non-initial
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

function tex_surface($text)
// Escape any characters that annoy TeX.
{
	$text=preg_replace("/_/", "\_", $text);
	$text=preg_replace("/%/", "\%", $text);
	$text=preg_replace("/\&/", "\&", $text);
	$text=preg_replace("/#/", "\#", $text);
	$text=preg_replace("/</", "$<$", $text);
	$text=preg_replace("/>/", "$>$", $text);
	$text=preg_replace("/\+\^/", "+\\textasciicircum~", $text);
	$text=preg_replace("/\+\/\//", "+$//$", $text);
	//$text=preg_replace("/\.\.\./", " \dots ", $text);
	// Substitutions to handle IPA characters - remember to load the TIPA package in the header
	// Valid:
	$text=preg_replace("/ǝ/", "\\textipa{@} ", $text);
	// Invalid (copy-and-pasted characters aren't recognised by the editor)
	$text=preg_replace("/ʧ/", "\\textipa{tS} ", $text);
	$text=preg_replace("/ð/", "\\textipa{D} ", $text);
	$text=preg_replace("/ɛ/", "\\textipa{E} ", $text);
	$text=preg_replace("/ɪ/", "\\textipa{I} ", $text);
	$text=preg_replace("/ŋ/", "\\textipa{N} ", $text);
	$text=preg_replace("/ɔ/", "\\textipa{O} ", $text);
	$text=preg_replace("/ʃ/", "\\textipa{S} ", $text);
	$text=preg_replace("/θ/", "\\textipa{T} ", $text);
	$text=preg_replace("/ɬ/", "\\textbeltl ", $text);
	$text=preg_replace("/ʔ/", "\\textglotstop ", $text);
//ʘ ts; ʣ
	return $text;
}

function tex_auto($text)
// Converts POS tags to \scriptsize
{
	$text=preg_replace("/ /", ".", $text);  // get rid of any spaces in the POS string - should no longer be required; now in write_cgfinished
	$text=preg_replace("/_/", "\_", $text);  // LaTeX no like
	$text=preg_replace("/%/", "\%", $text);  // LaTeX no like
	//$text=preg_replace("/([A-Za-z])(\..*$)/", "$1{\scriptsize $2}", $text);  // Minimise anything after the first dot (ie make the POS-tags following the lexeme smaller).
	$text=preg_replace("/(([A-Z]|[0-9])([A-Z]|\.).*$)/", "{\scriptsize $1}", $text);  // To make the POS-tags following the lexeme smaller, minimise anything that begins with a digit and cap (3S), a cap and a dot (V.), or two caps (DET).
	$text=preg_replace("/(I)(\..*$)/", "$1{\scriptsize $2}", $text);  // Handle "I" (1s pron)
    return $text;
}

function tex_mor($text)
// Converts POS tags to \scriptsize
{
	$text=preg_replace("/ /", ".", $text);  // get rid of any spaces in the POS string - should no longer be required; now in write_cgfinished
	$text=preg_replace("/_/", "\_", $text);  // LaTeX no like
	$text=preg_replace("/%/", "\%", $text);  // LaTeX no like
	$text=preg_replace("/\|/", "*", $text);  // LaTeX no like
	$text=preg_replace("/\&/", "\&", $text);  // LaTeX no like
	$text=preg_replace("/=/", "::", $text);  // LaTeX no like
	$text=preg_replace("/([a-z])(\..*$)/", "$1{\scriptsize $2}", $text);
	$text=preg_replace("/(I)(\..*$)/", "$1{\scriptsize $2}", $text);
    return $text;
}

function tex_pos_colour ($text)
// Colour the output based on POS
{
	if (preg_match("/\.V\./U", $text)) { $text="\\textcolor{Red}{".$text."}"; }
	if (preg_match("/\.ADV(\.|$)/U", $text)) { $text="\\textcolor{Plum}{".$text."}"; }
	if (preg_match("/\.N\./U", $text)) { $text="\\textcolor{Blue}{".$text."}"; }
	if (preg_match("/\.ADJ(\.|$)/U", $text)) { $text="\\textcolor{Green}{".$text."}"; }
	if (preg_match("/\.PRON\./U", $text)) { $text="\\textcolor{Brown}{".$text."}"; }
	if (preg_match("/\.PREP/U", $text)) { $text="\\textcolor{Orange}{".$text."}"; }

    return $text;
}

function get_speaker_data($words)
// Remember to change the _q table name.
// Get the speaker data from the questionnaire table for the speakers in the words table
// Need to include the limit fix from get_speakers below.
{
	$sqlsp=query("select speaker from $words group by speaker order by speaker");
	while ($rowsp=pg_fetch_object($sqlsp))
	{
		$sqlq=query("select * from small_siarad_q where id='$rowsp->speaker'");
		while ($rowq=pg_fetch_object($sqlq))
		{
			$deduct=0;  // Set up a variable to correct the average
			$spdata[$rowsp->speaker][aoa_min]=intval($rowq->welsh_since);
			$spdata[$rowsp->speaker][aoa_maj]=intval($rowq->english_since);
			$spdata[$rowsp->speaker][mother_lg]=intval($rowq->mother_spoke);
			$spdata[$rowsp->speaker][father_lg]=intval($rowq->father_spoke);
			$spdata[$rowsp->speaker][parent_lg]=(intval($rowq->mother_spoke)+intval($rowq->father_spoke))/2;
			$spdata[$rowsp->speaker][prim_lg]=intval($rowq->primary_lang);
			$spdata[$rowsp->speaker][sec_lg]=intval($rowq->secondary_lang);
			$spdata[$rowsp->speaker][educ_lg]=(intval($rowq->primary_lang)+intval($rowq->secondary_lang))/2;
			$spdata[$rowsp->speaker][nat_id]=intval($rowq->nat_id);
			$spdata[$rowsp->speaker][contact1]=intval($rowq->contact1); 
			if ($rowq->contact1=='0') { $deduct++; }  // If the entry here is blank, don't count it in the average
			$spdata[$rowsp->speaker][contact2]=intval($rowq->contact2);
			if ($rowq->contact2=='0') { $deduct++; }
			$spdata[$rowsp->speaker][contact3]=intval($rowq->contact3);
			if ($rowq->contact3=='0') { $deduct++; }
			$spdata[$rowsp->speaker][contact4]=intval($rowq->contact4);
			if ($rowq->contact4=='0') { $deduct++; }
			$spdata[$rowsp->speaker][contact5]=intval($rowq->contact5);
			if ($rowq->contact5=='0') { $deduct++; }
			$all_contacts=(intval($rowq->contact1)+intval($rowq->contact2)+intval($rowq->contact3)+intval($rowq->contact4)+intval($rowq->contact5))/(5-$deduct);
			$spdata[$rowsp->speaker][socnet]=round($all_contacts, 1);
		}
	}
	return $spdata;
}

function get_all_speaker_data($words)
// Remember to change the _q table name.
// Get the speaker data from the questionnaire table for the speakers in the words table
// Need to include the limit fix from get_speakers below.
{
	$sqlsp=query("select speaker, filename from $words where speaker!~'^(RES|OSE)$' group by speaker, filename order by speaker, filename");
	while ($rowsp=pg_fetch_object($sqlsp))
	{
		$ucfilename=ucfirst($rowsp->filename);
		$sqlq=query("select * from siarad_q where id='$rowsp->speaker' and conversation='$ucfilename'");
		while ($rowq=pg_fetch_object($sqlq))
		{
			$spdata[$rowsp->speaker][qlang]=$rowq->lang;
			$spdata[$rowsp->speaker][dob]=$rowq->dob;
			$spdata[$rowsp->speaker][gender]=$rowq->gender;
			$spdata[$rowsp->speaker][age]=$rowq->age;
			$spdata[$rowsp->speaker][work]=$rowq->work;
			$spdata[$rowsp->speaker][brought_up]=$rowq->brought_up;
			$spdata[$rowsp->speaker][main_area]=$rowq->main_area;
			$spdata[$rowsp->speaker][education]=$rowq->education;
			$spdata[$rowsp->speaker][welsh_since]=$rowq->welsh_since;
			$spdata[$rowsp->speaker][english_since]=$rowq->english_since;
			$spdata[$rowsp->speaker][welsh_ability]=$rowq->welsh_ability;
			$spdata[$rowsp->speaker][english_ability]=$rowq->english_ability;
			$spdata[$rowsp->speaker][mother_spoke]=$rowq->mother_spoke;
			$spdata[$rowsp->speaker][father_spoke]=$rowq->father_spoke;
			$spdata[$rowsp->speaker][guardian_spoke]=$rowq->guardian_spoke;
			$spdata[$rowsp->speaker][primary_lg]=$rowq->primary_lang;
			$spdata[$rowsp->speaker][secondary_lg]=$rowq->secondary_lang;
			$spdata[$rowsp->speaker][welsh_modern]=$rowq->welsh_modern;
			$spdata[$rowsp->speaker][welsh_useful]=$rowq->welsh_useful;
			$spdata[$rowsp->speaker][welsh_friendly]=$rowq->welsh_friendly;
			$spdata[$rowsp->speaker][welsh_inspiring]=$rowq->welsh_inspiring;
			$spdata[$rowsp->speaker][welsh_beautiful]=$rowq->welsh_beautiful;
			$spdata[$rowsp->speaker][welsh_influential]=$rowq->welsh_influential;
			$spdata[$rowsp->speaker][english_modern]=$rowq->english_modern;
			$spdata[$rowsp->speaker][english_useful]=$rowq->english_useful;
			$spdata[$rowsp->speaker][english_friendly]=$rowq->english_friendly;
			$spdata[$rowsp->speaker][english_inspiring]=$rowq->english_inspiring;
			$spdata[$rowsp->speaker][english_beautiful]=$rowq->english_beautiful;
			$spdata[$rowsp->speaker][english_influential]=$rowq->english_influential;
			$spdata[$rowsp->speaker][contact1]=$rowq->contact1;
			$spdata[$rowsp->speaker][contact2]=$rowq->contact2;
			$spdata[$rowsp->speaker][contact3]=$rowq->contact3;
			$spdata[$rowsp->speaker][contact4]=$rowq->contact4;
			$spdata[$rowsp->speaker][contact5]=$rowq->contact5;
			$spdata[$rowsp->speaker][nat_id]=$rowq->nat_id;
			$spdata[$rowsp->speaker][i_separate]=$rowq->i_separate;
			$spdata[$rowsp->speaker][shdbe_separate]=$rowq->shdbe_separate;
		}
	}
	return $spdata;
}

function get_all_speaker_data_patagonia($words)
// Remember to change the _q table name.
// Get the speaker data from the questionnaire table for the speakers in the words table
// Need to include the limit fix from get_speakers below.
{
	$sqlsp=query("select speaker, filename from $words where speaker!~'^(RES|OSE)$' group by speaker, filename order by speaker, filename");
	while ($rowsp=pg_fetch_object($sqlsp))
	{
		$ucfilename=ucfirst($rowsp->filename);
		$sqlq=query("select * from patagonia_q where id='$rowsp->speaker' and conversation='$ucfilename'");
		while ($rowq=pg_fetch_object($sqlq))
		{
			$spdata[$rowsp->speaker][qlang]=$rowq->lang;
			$spdata[$rowsp->speaker][dob]=$rowq->dob;
			$spdata[$rowsp->speaker][gender]=$rowq->gender;
			$spdata[$rowsp->speaker][age]=$rowq->age;
			$spdata[$rowsp->speaker][work]=$rowq->work;
			$spdata[$rowsp->speaker][brought_up]=$rowq->brought_up;
			$spdata[$rowsp->speaker][main_area]=$rowq->main_area;
			$spdata[$rowsp->speaker][education]=$rowq->education;
			$spdata[$rowsp->speaker][welsh_since]=$rowq->welsh_since;
			$spdata[$rowsp->speaker][spanish_since]=$rowq->spanish_since;
			$spdata[$rowsp->speaker][welsh_ability]=$rowq->welsh_ability;
			$spdata[$rowsp->speaker][spanish_ability]=$rowq->spanish_ability;
			$spdata[$rowsp->speaker][mother_spoke]=$rowq->mother_spoke;
			$spdata[$rowsp->speaker][father_spoke]=$rowq->father_spoke;
			$spdata[$rowsp->speaker][guardian_spoke]=$rowq->guardian_spoke;
			$spdata[$rowsp->speaker][primary_lg]=$rowq->primary_lang;
			$spdata[$rowsp->speaker][secondary_lg]=$rowq->secondary_lang;
			$spdata[$rowsp->speaker][welsh_modern]=$rowq->welsh_modern;
			$spdata[$rowsp->speaker][welsh_useful]=$rowq->welsh_useful;
			$spdata[$rowsp->speaker][welsh_friendly]=$rowq->welsh_friendly;
			$spdata[$rowsp->speaker][welsh_inspiring]=$rowq->welsh_inspiring;
			$spdata[$rowsp->speaker][welsh_beautiful]=$rowq->welsh_beautiful;
			$spdata[$rowsp->speaker][welsh_influential]=$rowq->welsh_influential;
			$spdata[$rowsp->speaker][spanish_modern]=$rowq->spanish_modern;
			$spdata[$rowsp->speaker][spanish_useful]=$rowq->spanish_useful;
			$spdata[$rowsp->speaker][spanish_friendly]=$rowq->spanish_friendly;
			$spdata[$rowsp->speaker][spanish_inspiring]=$rowq->spanish_inspiring;
			$spdata[$rowsp->speaker][spanish_beautiful]=$rowq->spanish_beautiful;
			$spdata[$rowsp->speaker][spanish_influential]=$rowq->spanish_influential;
			$spdata[$rowsp->speaker][contact1]=$rowq->contact1;
			$spdata[$rowsp->speaker][contact2]=$rowq->contact2;
			$spdata[$rowsp->speaker][contact3]=$rowq->contact3;
			$spdata[$rowsp->speaker][contact4]=$rowq->contact4;
			$spdata[$rowsp->speaker][contact5]=$rowq->contact5;
			$spdata[$rowsp->speaker][nat_id]=$rowq->nat_id;
			$spdata[$rowsp->speaker][i_separate]=$rowq->i_separate;
			$spdata[$rowsp->speaker][shdbe_separate]=$rowq->shdbe_separate;
		}
	}
	return $spdata;
}

function get_all_speaker_data_miami($words)
// Get the speaker data from the questionnaire table for the speakers in the words table
// Need to include the limit fix from get_speakers below.
{
	$sqlsp=query("select speaker, filename from $words where speaker!~'^(RES|OSE)$' group by speaker, filename order by speaker, filename");
	while ($rowsp=pg_fetch_object($sqlsp))
	{
		//$ucfilename=ucfirst($rowsp->filename);  // The filenames in the Miami questionnaire are lower-cased, for some reason.
		$ucfilename=$rowsp->filename;
		$sqlq=query("select * from miami_q where id='$rowsp->speaker' and conversation='$ucfilename'");
		while ($rowq=pg_fetch_object($sqlq))
		{
			$spdata[$rowsp->speaker][qlang]=$rowq->lang;
			$spdata[$rowsp->speaker][dob]=$rowq->dob;
			$spdata[$rowsp->speaker][gender]=$rowq->gender;
			$spdata[$rowsp->speaker][age]=$rowq->age;
			$spdata[$rowsp->speaker][work]=$rowq->work;
			$spdata[$rowsp->speaker][brought_up]=$rowq->brought_up;
			$spdata[$rowsp->speaker][main_area]=$rowq->main_area;
			$spdata[$rowsp->speaker][education]=$rowq->education;
			$spdata[$rowsp->speaker][spanish_since]=$rowq->spanish_since;
			$spdata[$rowsp->speaker][english_since]=$rowq->english_since;
			$spdata[$rowsp->speaker][spanish_ability]=$rowq->spanish_ability;
			$spdata[$rowsp->speaker][english_ability]=$rowq->english_ability;
			$spdata[$rowsp->speaker][mother_spoke]=$rowq->mother_spoke;
			$spdata[$rowsp->speaker][father_spoke]=$rowq->father_spoke;
			$spdata[$rowsp->speaker][guardian_spoke]=$rowq->guardian_spoke;
			$spdata[$rowsp->speaker][primary_lg]=$rowq->primary_lang;
			$spdata[$rowsp->speaker][secondary_lg]=$rowq->secondary_lang;
			$spdata[$rowsp->speaker][spanish_modern]=$rowq->spanish_modern;
			$spdata[$rowsp->speaker][spanish_useful]=$rowq->spanish_useful;
			$spdata[$rowsp->speaker][spanish_friendly]=$rowq->spanish_friendly;
			$spdata[$rowsp->speaker][spanish_inspiring]=$rowq->spanish_inspiring;
			$spdata[$rowsp->speaker][spanish_beautiful]=$rowq->spanish_beautiful;
			$spdata[$rowsp->speaker][spanish_influential]=$rowq->spanish_influential;
			$spdata[$rowsp->speaker][english_modern]=$rowq->english_modern;
			$spdata[$rowsp->speaker][english_useful]=$rowq->english_useful;
			$spdata[$rowsp->speaker][english_friendly]=$rowq->english_friendly;
			$spdata[$rowsp->speaker][english_inspiring]=$rowq->english_inspiring;
			$spdata[$rowsp->speaker][english_beautiful]=$rowq->english_beautiful;
			$spdata[$rowsp->speaker][english_influential]=$rowq->english_influential;
			$spdata[$rowsp->speaker][contact1]=$rowq->contact1;
			$spdata[$rowsp->speaker][contact2]=$rowq->contact2;
			$spdata[$rowsp->speaker][contact3]=$rowq->contact3;
			$spdata[$rowsp->speaker][contact4]=$rowq->contact4;
			$spdata[$rowsp->speaker][contact5]=$rowq->contact5;
			$spdata[$rowsp->speaker][nat_id]=$rowq->nat_id;
			$spdata[$rowsp->speaker][i_separate]=$rowq->i_separate;
			$spdata[$rowsp->speaker][shdbe_separate]=$rowq->shdbe_separate;
		}
	}
	return $spdata;
}

function get_speakers($words)
// Get the speaker data for the speakers in the words table
{
	$sqlsp=query("select speaker, count(speaker) from $words group by speaker order by speaker");
	while ($rowsp=pg_fetch_object($sqlsp))
	{
		if ($rowsp->count>0)
		// Added to prevent the sampler trying to get samples for speakers who make only a marginal contribution to the conversation.
		// The limit number is set here to 200, meaning that the speaker must contribute at least 200 utterances to be included in the roster.
		{
			$speakers[]=$rowsp->speaker;
		}
	}
	return $speakers;
}

function get_linguality($array)
// Get the linguality of a clause or utterance - Welsh/English
{
	$ling=array_count_values($array);
	// If there is at least one cym&eng or eng word, the clause is bilingual
	//if (!$ling[cym_eng] and !$ling[eng]) // note we need to use _ instead of &, since it has been switched in the preceding code
	// Redone to ignore cym&eng
	if (!$ling[eng])
	{
		$mb="monoW";
	}
	elseif (!$ling[cym])
	{
		$mb="monoE";
	}
	else
	{
		$mb="biling";
	}
	return $mb;
}

function get_linguality_patagonia($array)
// Get the linguality of a clause or utterance - Welsh/Spanish
{
	$ling=array_count_values($array);
	// If there is at least one cym&eng or eng word, the clause is bilingual
	//if (!$ling[cym_eng] and !$ling[eng]) // note we need to use _ instead of &, since it has been switched in the preceding code
	// Redone to ignore cym&eng
	if (!$ling[spa])
	{
		$mb="monoW";
	}
	elseif (!$ling[cym])
	{
		$mb="monoS";
	}
	else
	{
		$mb="biling";
	}
	return $mb;
}

function get_linguality_miami($array)
// Get the linguality of a clause or utterance - Spanish/English
{
	$ling=array_count_values($array);
	// If there is at least one cym&eng or eng word, the clause is bilingual
	//if (!$ling[cym_eng] and !$ling[eng]) // note we need to use _ instead of &, since it has been switched in the preceding code
	// Redone to ignore cym&eng
	if (!$ling[eng])
	{
		$mb="monoS";
	}
	elseif (!$ling[spa])
	{
		$mb="monoE";
	}
	else
	{
		$mb="biling";
	}
	return $mb;
}

function get_linguality_enes($array)
// Get the linguality of a clause or utterance
{
	$ling=array_count_values($array);
	if (!$ling[eng])
	{
		$mb="monoS";
	}
	elseif (!$ling[spa])
	{
		$mb="monoE";
	}
	else
	{
		$mb="biling";
	}
	return $mb;
}

function array_shift2(&$array)
// This is a non-destructive version of array_shift, ie it does not reindex the numerical keys.
// Thanks to the anonymous poster at http://php.net/manual/en/function.array-shift.php
{
	reset($array);
	$key=key($array);
	$removed=$array[$key];
	unset($array[$key]);
	return $removed;
 }

function collapse_me($text)
// This collapses the lgprofile fields to 1 digit for each group of words of the same language.
{
	$text=preg_replace("/0+/", "0", $text);
	$text=preg_replace("/1+/", "1", $text);
	$text=preg_replace("/2+/", "2", $text);
	return $text;
}

function lg_superscript($text)
{
	$text=preg_replace("/@s:eng(?![\\\&+])/","$^{E}$", $text);  // Need to allow for tex_surface() converting & to \&
	$text=preg_replace("/@s:spa/","$^{S}$", $text);
	$text=preg_replace("/@s:cym\\\&eng/","$^{C}_{E}$", $text);
	$text=preg_replace("/@s:eng\\\&spa/","$^{S}_{E}$", $text);
	$text=preg_replace("/@s:cym\\\&spa/","$^{C}_{S}$", $text);
	$text=preg_replace("/@s:spa+cym/","$^{S+}_{C}$", $text);
	$text=preg_replace("/@s:eng+cym/","$^{E+}_{C}$", $text);
	return $text;
}


function update_langids($line)
{
	// Set up the two languages to be counted as indeterminate:
	$indeter="cym&spa";
	// IMPORTANT!!! Set the secondary language here if @s by itself is being used as a tag.
	$line=preg_replace("/@s([^:])/", "@s:spa$1", $line);  
	// Replace all language tags that do not correspond to the default 3-letter tags
	$line=preg_replace("/@0(?![123])/", "@s:$indeter", $line);
	$line=preg_replace("/@1(?![23])/", "@s:cym", $line);
	$line=preg_replace("/@2(?![13])/", "@s:eng", $line);
	$line=preg_replace("/@3(?![12])/", "@s:spa", $line);
	$line=preg_replace("/@01/", "@s:$indeter+cym", $line);
	$line=preg_replace("/@02/", "@s:$indeter+eng", $line);
	$line=preg_replace("/@03/", "@s:$indeter+spa", $line);
	$line=preg_replace("/@12/", "@s:cym+eng", $line);
	$line=preg_replace("/@13/", "@s:cym+spa", $line);
	$line=preg_replace("/@21/", "@s:eng+cym", $line);
	$line=preg_replace("/@23/", "@s:eng+spa", $line);
	$line=preg_replace("/@31/", "@s:spa+cym", $line);
	$line=preg_replace("/@32/", "@s:spa+eng", $line);
	$line=preg_replace("/@s:en&es(?!\+)/", "@s:eng&spa", $line);
	$line=preg_replace("/@s:cy&es(?!\+)/", "@s:cym&spa", $line);
	$line=preg_replace("/@s:cy&en(?!\+)/", "@s:cym&eng", $line);
	$line=preg_replace("/@s:cy(?![m&\+])/", "@s:cym", $line);
	$line=preg_replace("/@s:en(?![g&\+])/", "@s:eng", $line);
	$line=preg_replace("/@s:es(?![&\+])/", "@s:spa", $line);
	$line=preg_replace("/@s:en&es\+cy/", "@s:eng&spa+cym", $line);
	$line=preg_replace("/@s:en&es\+en/", "@s:eng&spa+eng", $line);
	$line=preg_replace("/@s:en&es\+es/", "@s:eng&spa+spa", $line);
	$line=preg_replace("/@s:cy&en\+cy/", "@s:cym&eng+cym", $line);
	$line=preg_replace("/@s:cy&en\+en/", "@s:cym&eng+eng", $line);
	$line=preg_replace("/@s:cy&en\+es/", "@s:cym&eng+spa", $line);
	$line=preg_replace("/@s:cy&es\+cy/", "@s:cym&spa+cym", $line);
	$line=preg_replace("/@s:cy&es\+en/", "@s:cym&spa+eng", $line);
	$line=preg_replace("/@s:cy&es\+es/", "@s:cym&spa+spa", $line);
	$line=preg_replace("/@s:cy\+en/", "@s:cym+eng", $line);
	$line=preg_replace("/@s:cy\+es/", "@s:cym+spa", $line);
	$line=preg_replace("/@s:en\+cy/", "@s:eng+cym", $line);
	$line=preg_replace("/@s:en\+es/", "@s:eng+spa", $line);
	$line=preg_replace("/@s:es\+cy/", "@s:spa+cym", $line);
	$line=preg_replace("/@s:es\+en/", "@s:spa+eng", $line);
	return $line;
}

function rounded($var,$n)
// rounds fields to n decimal places
{
        $var=sprintf("%.".$n."f",$var);
        return $var;
}

function diff($old, $new)
// https://github.com/paulgb/simplediff/blob/5bfe1d2a8f967c7901ace50f04ac2d9308ed3169/simplediff.php
{
	$maxlen = 0;
	foreach($old as $oindex => $ovalue)
	{
		$nkeys = array_keys($new, $ovalue);
		foreach($nkeys as $nindex)
		{
			$matrix[$oindex][$nindex] = isset($matrix[$oindex - 1][$nindex - 1]) ? $matrix[$oindex - 1][$nindex - 1] + 1 : 1;
			if($matrix[$oindex][$nindex] > $maxlen)
			{
				$maxlen = $matrix[$oindex][$nindex];
				$omax = $oindex + 1 - $maxlen;
				$nmax = $nindex + 1 - $maxlen;
			}
		}
	}

	if($maxlen == 0) return array(array('d'=>$old, 'i'=>$new));
	return array_merge(
	diff(array_slice($old, 0, $omax), array_slice($new, 0, $nmax)),
	array_slice($new, $nmax, $maxlen),
	diff(array_slice($old, $omax + $maxlen), array_slice($new, $nmax + $maxlen)));
}

function htmlDiff($old, $new)
{
	$diff = diff(explode(' ', $old), explode(' ', $new));
	foreach($diff as $k)
	{
		if(is_array($k))
		$ret .= (!empty($k['d'])?"<del>".implode(' ',$k['d'])."</del> ":'').
		(!empty($k['i'])?"<ins>".implode(' ',$k['i'])."</ins> ":'');
		else $ret .= $k . ' ';
	}
	return $ret;
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
<?php
function lineclean_emg($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_emg($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_con($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_con($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_aut($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_aut($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_glo($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_glo($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function lineclean_tra($text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
<?php
function wordclean_tra($text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return $text;
}
?>
