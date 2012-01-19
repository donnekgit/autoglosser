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

// This file writes out datasets from the $utterances table.  Note that this appends data, so if you want to rerun it, delete the existing contents first.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("miamitrans/&_context.txt", "a") or die("Can't create the file");

fwrite($fp, "\n\n".$filename."\n==========\n"); 

// Write out the file contents.
//$sql_s="select * from $utterances where com!='' order by utterance_id";
$sql_s="select * from $utterances where surface ~ '[[:blank:]]&[^=]'";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
    $u=$row_s->utterance_id;
	$surface=$row_s->surface;
	$surface=preg_replace("/([[:blank:]])(&.[^ ]*)/", "$1   |||$2|||   ", $surface);
	$speech=$u.":".$row_s->speaker.":\t".$surface."\n";
    fwrite($fp, $speech);
/*
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
        $comment="@Comment:\t".$row_s->comment."\n";
        fwrite($fp, $comment); 
    }
    
    if (isset($row_s->com))
    {
        $comment="%com:\t".$row_s->com."\n";
        fwrite($fp, $comment); 
    }
*/
    unset($speech, $gls, $eng, $mor, $comment, $auto);
}

fclose($fp);

?>