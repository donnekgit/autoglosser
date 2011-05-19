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
This script converts chat files tagged with @0, @1, @2, @3 to the new CLAN default with precodes.  The conventions used for this are as follows (for Welsh and English):
(1) Use the lgprofile table to find all utterances where every item is tagged as eng.
(2) Remove all @2 tags and mark the utterance with a precode [- eng].
(3) For all other utterances: (a) remove all @3 tags from cym items; (b) convert all @2 tags to @s:eng on eng items; (c) convert all @0 tags to @s:cym&eng.
The output file will need the headers added manually, and the languages need to be listed (more frequent language first):
@Languages:	cym, eng
@Comment:	Language markers: @s:cym = Welsh, @s:eng = English, @s:cym&eng = Undetermined, @s:eng+cym = word with first morpheme(s) English, second morpheme(s) Welsh, @s:cym+eng = word with first morpheme(s) Welsh, second morpheme(s) English.
*/

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}
$profiletable=$filename."_lgprofile";

//$fp = fopen("outputs/".$filename."/".$filename."_b.cha", "w") or die("Can't create the file");
$fp = fopen("inputs/siarad/beta/".$filename.".cha", "w") or die("Can't create the file");  // Edit to make running sh_run_import_convert easier - no need to shift the beta files afterwards

// Write out the file header.
$lines=file("outputs/".$filename."/".$filename.".header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	fwrite($fp, $line."\n");
}

$sql1="select utterance_id, lgprofile from $profiletable where lgprofile !~'(0|1)' and lgprofile != ''";
// Loosen a bit to count 0s in an utterance that is otherwise 2s
//$sql1="select utterance_id, lgprofile from ".$filename."_lgprofile where lgprofile !~'1' and lgprofile !='0' and lgprofile !='00' and lgprofile !='000' and lgprofile != ''";
// The above would need to be changed for alphabetic language tags (en, es, spa, etc)
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$profiles[]=$row1->utterance_id;
}

$sql3="select * from $utterances order by utterance_id";
$result3=pg_query($db_handle,$sql3) or die("Can't get the items");
while ($row3=pg_fetch_object($result3))
{
	$surface=$row3->surface;
	if (in_array("$row3->utterance_id", $profiles))
	{
		$surface="[- eng] ".$surface;
		$surface=preg_replace("/@2/", "", $surface);
		//$surface=preg_replace("/@0$/", "@s:cym&eng", $surface);  // Only relevant if the looser option above is selected.
	}
	else
	{
		$surface=preg_replace("/@1(?!2)/", "", $surface);
		$surface=preg_replace("/@12/", "@s:cym+eng", $surface);
		$surface=preg_replace("/@2(?!1)/", "@s:eng", $surface);
		$surface=preg_replace("/@21/", "@s:eng+cym", $surface);
		$surface=preg_replace("/@0/", "@s:cym&eng", $surface);
	}

	$speech="*".$row3->speaker.":	".$surface." %snd:\"".$row3->filename."\"_".$row3->durbegin."_".$row3->durend."\n";
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
        $comment="%com:\t".$row3->comment."\n";
        fwrite($fp, $comment); 
    }

	echo $row3->utterance_id.": ".$surface."\n";

	/* May not be necessary to generate a table.
	$surface=pg_escape_string($surface);
	$sqlnew="insert into $converted(utterance_id, surface, speaker) values($row3->utterance_id, '$surface', '$row3->speaker')";
	$resultnew=pg_query($db_handle,$sqlnew) or die("Can't get the items");
	*/
}

// Write out the file terminator.
fwrite($fp, "@End\n");

fclose($fp);

?>