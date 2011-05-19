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

// This file writes out the $words table in a csv file that can then be opened in a spreadsheet with the surface and autogloss in parallel cells.  This may make it easier to check for glossing accuracy.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_mysyntax.csv", "w") or die("Can't create the file");

$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
    $sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
    $result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
    while ($row_w=pg_fetch_object($result_w))
    {
        $surface.="\"".$row_w->surface."\",";
        $auto.="\"".$row_w->auto."\",";
        $mor.="\"".$row_w->mor."\",";
    }

    $wsurface="\"".$row_s->speaker."\",".$surface."\n";
    fwrite($fp, $wsurface);

    $wauto="\"aut\",".$auto."\n";
    fwrite($fp, $wauto);

	$wmor="\"mor\",".$mor."\n";
    fwrite($fp, $wmor);

    fwrite($fp, "\n");

    unset($surface, $auto, $mor, $wsurface, $wauto, $wmor);
}

fclose($fp);

?>