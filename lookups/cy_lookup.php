<?php

/*
Copyright Kevin Donnelly 2009.

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

// This file handles dictionary lookups in the Welsh dictionary, cylist.  If your dictionary has a different name and different fields, change the table name and fieldnames that are used below to suit your ones.

$sql_cy="select * from cylist where surface='$surface'";
$result_cy=pg_query($db_handle,$sql_cy) or die("Can't get the items");

if (pg_num_rows($result_cy)>0)  // If there is an entry for the word in the dictionary ...
{
    while ($row_cy=pg_fetch_object($result_cy))
    {
        $lemma="\t\"".$row_cy->lemma."\" ";
        $pos=$row_cy->pos." ";
        $mutation=($row_cy->mutation =='') ? "" : $row_cy->mutation." ";  // If there is no entry in the mutation field, let $mutation be empty; if there is an entry, let $mutation be that plus a space.
        $gender=($row_cy->gender =='') ? "" : $row_cy->gender." ";
        $num=($row_cy->num =='') ? "" : $row_cy->num." ";
        $tense=($row_cy->tense =='') ? "" : $row_cy->tense." ";
        $reg=($row_cy->reg =='') ? "" : $row_cy->reg." ";
        $enlemma=":".$row_cy->enlemma.": ";
        $id=$row_cy->id;
        $entry.=pg_escape_string($lemma."[cy] ".$pos.$mutation.$gender.$num.$tense.$reg.$enlemma.$id)."\n";  // Glue together all the fields for the word.
    }
}
else  // If there is no entry for the word in the dictionary ...
{
    $tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "unk";
    $entry="\t\"".$surface."\" "."[cy] ".$tag."\n";
}

echo $entry;  // View
fwrite($fp, $entry);  // Write
unset($entry);  // Clear the decks

?>