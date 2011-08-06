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

/*
Call as: php utils/convert_to_default.php sastre1 
This script converts chat files tagged with @en, @es to the new CLAN default with precodes.  The conventions used for this are as follows (for Spanish and English):
(1) Read the language tags of every utterance into an array.
(2) Where no spa tag exists in the array, remove all @eng tags and mark the utterance with a precode [- eng].
The output file will need the headers added manually, and the languages need to be listed (more frequent language first):
@Languages:	spa, eng
*/

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$fp = fopen("clan/chats/".$filename."_m.cha", "w") or die("Can't create the file");  // For glossing with MOR.

// Note that this output file gets moved - adjust the target location at the bottom of this script.
$fp = fopen("outputs/".$filename."/".$filename.".cha", "w") or die("Can't create the file"); 

// Write out the file header.
$lines=file("outputs/$filename/$filename.header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	fwrite($fp, $line."\n");
}

$sql3=query("select * from $utterances order by utterance_id");
while ($row3=pg_fetch_object($sql3))
{
	$surface=$row3->surface;

	$sql4=query("select * from $words where utterance_id=$row3->utterance_id and langid!='999' order by location");
	while ($row4=pg_fetch_object($sql4))
	{
		$this_lang[$row4->location]=preg_replace("/&/", "_", $row4->langid);  // The key won't be read if there is a & in it
		// Put all the langids for this utterance into an array.
	}
	
	$langs=array_count_values($this_lang);  // Get a total for each of the langids in the utterance. 
	//print_r($langs);
	
	if (count($langs)>0)  // If there is at least one langid (ie word) in the utterance ...
	{
		if (!$langs[eng])  // ... where there are no English words ...
		{
			if (!$langs[eng_spa] and count($langs[spa])>0)  // ... and there is at least one word that is Spanish and there are no indeterminates
			{
				$surface="[- spa] ".$surface;  // Add a Spanish  precode to the surface line of the utterances table.
				$surface=preg_replace("/@s:spa/", "", $surface);  // Delete the Spanish tag where it is not part of an indeterminate tag.
			}
		}
	}
	
	$surface=preg_replace("/@s:eng(?![&+])/", "", $surface);  // Delete the English tag where it is not part of an indeterminate or + tag.
	// Required when converting from older @2 taggings, where each word has been tagged.
	// This works OK because under the conditions above, no utterance will be given a [- spa] precode unless it contains only Spanish words.
	
	$speech="*".$row3->speaker.":\t".$surface." %snd:\"".$row3->filename."\"_".$row3->durbegin."_".$row3->durend."\n";
	fwrite($fp, $speech);
	
	// We should be using the scantiers file to add in any subtiers, on the following pattern:
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
        $comment="%com:\t".$row3->comment."\n";
        fwrite($fp, $comment); 
    }

	echo $row3->utterance_id.": ".$surface."\n";
	
	unset($this_lang, $langs, $speech, $gls, $eng, $mor, $comment);
}

fwrite($fp, "@End\n");

fclose($fp);

exec("mv outputs/$filename/$filename.cha inputs/miami/beta/zeledon6/converted/$filename.cha");

?>