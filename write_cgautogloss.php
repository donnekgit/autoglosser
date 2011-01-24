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

// This file writes out the $words table in CLAN .cha format - note that you have to add headers and footer manually at the minute.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_autoglossed.txt", "w") or die("Can't create the file");

$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
    //$u=$row_s->utterance_id;
    //$speech="(".$u."a) *".$row_s->speaker.": ".$row_u->mainlang."\n";
    $speech="*".$row_s->speaker.": ".$row_s->surface." %snd:\"".$row_s->filename."\"_".$row_s->durbegin."_".$row_s->durend."\n";
    fwrite($fp, $speech);

	$sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
    $result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
    while ($row_w=pg_fetch_object($result_w))
    {
        $auto.=$row_w->auto." ";
    }
    $auto="%aut: ".preg_replace('/ $/','',$auto)."\n";
    fwrite($fp, $auto);

    // Use the scantiers file to add in any subtiers, on the following pattern:
    if (isset($row->gls))
    {
        $gls="%gls: ".$row_s->gls."\n";
        fwrite($fp, $gls); 
    }

	 if (isset($row_s->mor))
    {
        $mor="%mor: ".$row_s->mor."\n";
        fwrite($fp, $mor); 
    }

    if (isset($row_s->comment))
    {
        $comment="%com: ".$row_s->comment."\n";
        fwrite($fp, $comment); 
    }

    unset($speech, $gls, $mor, $comment, $auto);
}

fclose($fp);

?>