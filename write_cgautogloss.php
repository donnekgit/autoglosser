<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
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

// This file writes out the $words table in CLAN .cha format.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_autoglossed.txt", "w") or die("Can't create the file");

// Update the file header with autogloss info.
$today = date("j F Y, H:i");
$updateheader=fopen("outputs/".$filename."/".$filename.".header", "a") or die("Can't create the file");
fwrite($updateheader, "\n@Comment:\tGloss generated by Bangor Autoglosser (Linux): $today");
fclose($updateheader);

// Write out the file header.
$lines=file("outputs/".$filename."/".$filename.".header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	fwrite($fp, $line."\n");
}

// Write out the file contents.
$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
    //$u=$row_s->utterance_id;
    //$speech="(".$u."a) *".$row_s->speaker.": ".$row_u->mainlang."\n";
	$precode=$row_s->precode;
	$precode=($precode=='') ? "": "[- ".$precode."] ";
    //$speech="*".$row_s->speaker.":\t".$precode.$row_s->surface." %snd:\"".$row_s->filename."\"_".$row_s->durbegin."_".$row_s->durend."\n";  // This older format for the sound-bullets is now deprecated.
    $speech="*".$row_s->speaker.":\t".$precode.$row_s->surface." ".$row_s->durbegin."_".$row_s->durend."\n";
    fwrite($fp, $speech);


	// Comment this section out if you want to write out a file directly from the utterances table
	$sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
    $result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
    while ($row_w=pg_fetch_object($result_w))
    {
        $auto.=$row_w->auto." ";
    }
    $auto="%aut:\t".preg_replace('/ $/','',$auto)."\n";
    fwrite($fp, $auto);
	// End of section to be cvommented out.


    // We should be using the scantiers file to add in any subtiers, on the following pattern:
    if (isset($row_s->gls))
    {
        $gls="%gls:\t".$row_s->gls."\n";
        fwrite($fp, $gls); 
    }

	if (isset($row_s->eng))
    {
        $eng="%eng:\t".$row_s->eng."\n";
        fwrite($fp, $eng); 
    }

	 if (isset($row_s->mor))
    {
        $mor="%mor:\t".$row_s->mor."\n";
        fwrite($fp, $mor); 
    }

    if (isset($row_s->comment))
    {
        $comment="%com:\t".$row_s->comment."\n";
        fwrite($fp, $comment); 
    }

    unset($speech, $gls, $eng, $mor, $comment, $auto);
}

fwrite($fp, "@End\n");

fclose($fp);

?>