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
    $enlemma=($row->enlemma !='') ? $row->enlemma."." : $row->lemma;
    $pos=$row->pos.".";
    $gender=($row->gender =='') ? "" : $row->gender.".";
    $number=($row->number =='') ? "" : $row->number.".";
    $tense=($row->tense =='') ? "" : $row->tense.".";
    $notes=($row->notes =='') ? "" : $row->notes.".";
    $extra=($row->extra =='') ? "" : "+".$row->extra;
    $tags=strtoupper(preg_replace('/\.$/','', $pos.$gender.$number.$tense.$notes.$extra));
    $lemtags=pg_escape_string($enlemma.$tags);
    if ($row->utterance_id==$utt and $row->location==$loc)
    {
        $auto=$auto."[or]".$lemtags;
        echo "Repeat: ".$auto.": ".$row->utterance_id.":".$row->location."\n";
    }
    else
    {
        $auto=$lemtags;
        $utt=$row->utterance_id;
        $loc=$row->location;
        echo "New: ".$auto.": ".$utt.":".$loc."\n";
    }

    // Write them into the words table
    $sql_u="update $words set auto='$auto' where utterance_id=$utt and location=$loc";
    $result_u=pg_query($db_handle,$sql_u) or die("Can't update");
}

?>