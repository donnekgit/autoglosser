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

// This script is the second part of a conversion of chat file marking from one primary language to another (eg cym,spa to spa,cym).  First, run utils/tag_all_words.php to write out the existing precode version of the file in the database to one with each word tagged for language.    Then adjust the header of the original file manually.  Next, import that file into the database: php import_only.php my_new_file.php.  Then run this script to write out that import into a precode version with the new predominant language.  Finally, compare the two files in Meld and update the git copy.

/* 
Criteria for tagging:
1.  All words in the main language will be left untagged.
2.  If an utterance consists of a word or words in the main language along with indeterminate words or non-main language words, those non-main language words will be tagged.
3.  If an utterance consists only of indeterminate words and/or words from a non-main language, they will all be tagged.
4.  If an utterance consists only of non-main language words (with no indeterminate words), they will be left untagged, and the utterance will be given a precode.
*/

// YOU NEED TO SPECIFY THE MAIN LANGUAGE BELOW.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$alltags=$filename."_alltags";

$mainlg="eng";  // The language you want to designate as the primary one in the converted marking.

// Note that this output file gets moved - adjust the target location at the bottom of this script.
$fp = fopen("convert/{$filename}_primeng.cha", "w") or die("Can't create the file"); 

// Write out the file header.
$lines=file("outputs/$filename/$filename.header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	//if (preg_match("/@(Languages|ID)/", $line))
	//{
		//$line=preg_replace("/cym, spa/", "spa, cym", $line);  // Change the language tags.
	//}
	fwrite($fp, $line."\n");
}

$sql3=query("select * from {$alltags}_cgutterances order by utterance_id");
while ($row3=pg_fetch_object($sql3))
{
	$surface=$row3->surface;

	$sql4=query("select * from {$alltags}_cgwords where utterance_id=$row3->utterance_id and langid!='999' order by location");
	while ($row4=pg_fetch_object($sql4))
	{
		$this_lang[$row4->location]=preg_replace("/&/", "_", $row4->langid);  // The key won't be read if there is a & in it
		// Put all the langids for this utterance into an array.
	}
	
	$langs=array_count_values($this_lang);  // Get a total for each of the langids in the utterance. 
	//print_r($langs);
	
	// Handle the tagging.  This could probably be tweaked.  For instance, ignoring indeterminates would let "all English except for indeterminates" have a precode, instead of all the English words being tagged.  We could also use the count figures to insert a precode and switch the tagging based on the relative numbers of main language words in the utterance.  But this may be gilding the lily ...
	
	// First, remove tags and add a precode where that language is the only one in the utterance.	
	if (count($langs)>0)  // If there is at least one langid (ie word) in the utterance ...
	{
		if (!$langs[cym_eng] and !$langs[cym_spa] and !$langs[cym] and !$langs[spa] and count($langs[eng])>0)  // ... and there are no indeterminate or Welsh or Spanish words and there is at least one word that is English ... 
		{
			if (preg_match("/^(?P<link>\+[<^\+\",])/", $surface, $linker))  // Keep continuation markers at the beginning of the line - if a  continuation marker exists, copy it into the [link] key of the $linker array, and do the following:
			{
				$surface=preg_replace("/^(\+[<^\+\",] )/", "", $surface);  // Remove the continuation marker.
				$surface=$linker[link]." [- eng] ".$surface;  // Add it back in again from the $linker array, and insert an English precode after it.
			}
			else  // If there is no continuation marker, just insert the precode.
			{
				$surface="[- eng] ".$surface;  // Add an English  precode to the surface line of the utterances table.
			}
			$surface=preg_replace("/@s:eng(?!&spa)/", "", $surface);  // Delete the English tag where it is not part of an indeterminate tag.
		}
		elseif (!$langs[cym_eng] and !$langs[cym_spa] and !$langs[eng] and !$langs[spa] and count($langs[cym])>0)  // ... and there are no indeterminate or English or Spanish words and there is at least one word that is Welsh ... 
		{
			if (preg_match("/^(?P<link>\+[<^\+\",])/", $surface, $linker))  // Keep continuation markers at the beginning of the line - if a  continuation marker exists, copy it into the [link] key of the $linker array, and do the following:
			{
				$surface=preg_replace("/^(\+[<^\+\",] )/", "", $surface);  // Remove the continuation marker.
				$surface=$linker[link]." [- cym] ".$surface;  // Add it back in again from the $linker array, and insert a Welsh precode after it.
			}
			else  // If there is no continuation marker, just insert the precode.
			{
				$surface="[- cym] ".$surface;  // Add a Welsh  precode to the surface line of the utterances table.
			}
			$surface=preg_replace("/@s:cym(?!&(eng|spa))/", "", $surface);  // Delete the Welsh tag where it is not part of an indeterminate tag.
		}
		elseif (!$langs[cym_eng] and !$langs[cym_spa] and !$langs[cym] and !$langs[eng] and count($langs[spa])>0)  // ... and there are no indeterminate or Welsh or Englishwords and there is at least one word that is Spanish ... 
		{
			if (preg_match("/^(?P<link>\+[<^\+\",])/", $surface, $linker))  // Keep continuation markers at the beginning of the line - if a  continuation marker exists, copy it into the [link] key of the $linker array, and do the following:
			{
				$surface=preg_replace("/^(\+[<^\+\",] )/", "", $surface);  // Remove the continuation marker.
				$surface=$linker[link]." [- spa] ".$surface;  // Add it back in again from the $linker array, and insert a Spanish precode after it.
			}
			else  // If there is no continuation marker, just insert the precode.
			{
				$surface="[- spa] ".$surface;  // Add a Spanish  precode to the surface line of the utterances table.
			}
			$surface=preg_replace("/@s:spa/", "", $surface);  // Delete the Spanish tag where it is not part of an indeterminate tag.
		}
	}
	// Second, remove tags and precodes referring to the main language.
	$surface=preg_replace("/@s:$mainlg(?!&)/", "", $surface);  // Delete the main language tag where it is not part of an indeterminate tag.
	$surface=preg_replace("/\[- $mainlg\] /", "", $surface);  // Delete the main language precode.

	$speech="*".$row3->speaker.":\t".$surface." ".$row3->durbegin."_".$row3->durend."\n";
	fwrite($fp, $speech);
	
	if (isset($row3->gls))
    {
        $gls="%gls:\t".$row3->gls."\n";
        fwrite($fp, $gls); 
    }

	if (isset($row3->eng))
    {
        $eng="%eng:\t".$row3->eng."\n";
        fwrite($fp, $eng); 
    }

	 if (isset($row3->mor))
    {
        $mor="%mor:\t".$row3->mor."\n";
        fwrite($fp, $mor); 
    }

    if (isset($row3->comment))
    {
        $comment="@Comment:\t".$row3->comment."\n";
        fwrite($fp, $comment); 
    }
    
    if (isset($row3->com))
    {
        $comment="%com:\t".$row3->com."\n";
        fwrite($fp, $comment); 
    }

	echo $row3->utterance_id.": ".$surface."\n";
	
	unset($this_lang, $langs, $speech, $gls, $eng, $mor, $comment, $com);
}

fwrite($fp, "@End\n");

fclose($fp);

//exec("mv outputs/$filename/$filename.cha inputs/patagonia/beta/spa/$filename.cha");

?>