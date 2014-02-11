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

// Create wayback files if they don't exist.
exec("touch outputs/".$filename."/".$filename."_autoglossed_old.txt");
exec("touch outputs/".$filename."/".$filename."_autoglossed_old_old.txt");
// Copy autoglossed files one step backwards.
exec("mv outputs/".$filename."/".$filename."_autoglossed_old.txt outputs/".$filename."/".$filename."_autoglossed_old_old.txt"); 
exec("mv outputs/".$filename."/".$filename."_autoglossed.txt outputs/".$filename."/".$filename."_autoglossed_old.txt"); 

//Create a new autoglossed file for this step.
$fp = fopen("outputs/".$filename."/".$filename."_autoglossed.txt", "w") or die("Can't create the file");

exec("sed -ri '/Bangor Autoglosser/ d' outputs/".$filename."/".$filename.".header");  // Delete previous gloss log lines in the header file.

// Update the file header with autogloss info.
//$today = date("j F Y, H:i");
$today = date("j F Y");
$updateheader=fopen("outputs/".$filename."/".$filename.".header", "a") or die("Can't create the file");
fwrite($updateheader, "\n@Comment:\tGloss (in the %aut tier) generated by Bangor Autoglosser (on Linux): $today - there may be an error rate of up to 2% in the generated glosses.");  // Add a new gloss log line in the header file.
fclose($updateheader);

exec("sed -ri '/^$/ d' outputs/".$filename."/".$filename.".header");  // Delete blank lines in the header file.

// Write out the file header.
$lines=file("outputs/".$filename."/".$filename.".header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	fwrite($fp, $line."\n");
}

$auto="";

// Write out the file contents.
$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
    //$u=$row_s->utterance_id;
    //$speech="(".$u."a) *".$row_s->speaker.": ".$row_u->mainlang."\n";
	$surface=$row_s->surface;
	$precode=$row_s->precode;
	$precode=($precode=='') ? "": "[- ".$precode."] ";
    //$speech="*".$row_s->speaker.":\t".$precode.$row_s->surface." %snd:\"".$row_s->filename."\"_".$row_s->durbegin."_".$row_s->durend."\n";  // This older format for the sound-bullets is now deprecated.
    // CHECK will give a sound-bullet error if the bullets contain only 0_0:
    if ($row_s->durbegin>0 and $row_s->durend>0)
    {
		$sound_bullet=" ".$row_s->durbegin."_".$row_s->durend."";
	}
	else
	{
		$sound_bullet="";
	}

	if (preg_match("/^(?P<link>\+[<^\+\",])/", $surface, $linker))  // Keep continuation markers at the beginning of the line - if a  continuation marker exists, copy it into the [link] key of the $linker array, and do the following:
	{
		$surface=preg_replace("/^(\+[<^\+\",] )/", "", $surface);  // Remove the continuation marker.
		$speech="*".$row_s->speaker.":\t".$linker[link]." ".$precode.$surface.$sound_bullet."\n";  // Add it back in again from the $linker array, and insert the precode after it.
	}
	else  // If there is no continuation marker, just insert the precode.
	{
		$speech="*".$row_s->speaker.":\t".$precode.$surface.$sound_bullet."\n";
	}
    fwrite($fp, $speech);

//*****************

// Comment this section out if you want to write out a file directly from the utterances table.
	$sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
    $result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
    while ($row_w=pg_fetch_object($result_w))
    {
        $auto.=$row_w->auto." ";  // FIXME: convert space to _
    }
    
    $auto="%aut:\t".trim($auto)."\n";

	fwrite($fp, $auto);

// End of section to be commented out.

//*****************

    if (isset($row_s->gls))
    {
        $gls="%gls:\t".$row_s->gls."\n";
        fwrite($fp, $gls); 
    }

    // We should be using the scantiers file to add in any subtiers, on the following pattern:
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

    if (isset($row_s->com))
    {
        $comment="%com:\t".$row_s->com."\n";
        fwrite($fp, $comment); 
    }
    
    if (isset($row_s->comment))  // This is a "section" comment, so it should follow all the others.
    {
        $comment="@Comment:\t".$row_s->comment."\n";
        fwrite($fp, $comment); 
    }

    unset($speech, $gls, $eng, $mor, $comment, $auto);
}

fwrite($fp, "@End\n");

fclose($fp);

// Delete empty %aut lines in the autoglossed file.
exec("sed -ri '/%aut:\t$/ d' outputs/".$filename."/".$filename."_autoglossed.txt");

?>