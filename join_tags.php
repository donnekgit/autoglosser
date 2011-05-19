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

// This file concatenates the tags in the $finished table and writes them into the $words table.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Concatenate the fields in the CG output file
$sql="select * from $cgfinished order by utterance_id, location";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$enlemma=$row->enlemma.".";
	$pos=($row->pos=='') ? "" : $row->pos.".";
    $extra=($row->extra =='') ? "" : "+".$row->extra.".";  // needs to be changed to = to follow the Leipzig glossing rules
    $seg=($row->seg =='') ? "" : "+".$row->seg;  // needs to be changed to = to follow the Leipzig glossing rules
	$combined1=$pos.$extra.$seg;
    $combined2=strtoupper($combined1);  // uppercase the POS-tags
    $tags=preg_replace('/\.\+/','+', $combined2);  // remove the dot before a +
    $lemtags=pg_escape_string($enlemma.$tags);
    $lemtags=preg_replace('/\.$/','', $lemtags);  // remove the dot at the end of the string
    if ($row->utterance_id==$utt and $row->location==$loc)
    {
        $auto=$auto."[or]".$lemtags;
        echo "Repeat: ".$row->utterance_id.":".$row->location.": ".$auto."\n";
    }
    else
    {
        $auto=$lemtags;
        $utt=$row->utterance_id;
        $loc=$row->location;
        echo "New: ".$utt.":".$loc.": ".$auto."\n";
    }

    // Write them into the words table
    $sql_u="update $words set auto='$auto' where utterance_id=$utt and location=$loc";
    $result_u=pg_query($db_handle,$sql_u) or die("Can't update");
}

?>