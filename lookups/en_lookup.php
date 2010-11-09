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

// This file handles dictionary lookups in the English dictionary, enlist.  If your dictionary has a different name and different fields, change the table name and fieldnames that are used below to suit your ones.

$sql_en="select * from enlist where surface='$surface'";
$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");
if (pg_num_rows($result_en)>0)
{
    while ($row_en=pg_fetch_object($result_en))
    {
        $ensurface="\t\"".$row_en->surface."\" ";
        $pos=$row_en->pos." ";
        $gender=($row_en->gender =='') ? "" : $row_en->gender." ";
        $number=($row_en->number =='') ? "" : $row_en->number." ";
        $tense=($row_en->tense =='') ? "" : $row_en->tense." ";
        $notes=($row_en->notes =='') ? "" : $row_en->notes." ";
        $enlemma=":".$row_en->surface.": ";
        $id="[".$row_en->id."]";
        $entry.=$ensurface.$place."[en] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id."\n";
    }
}
else
{
    $tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "unk";  // Replace unk with $surface if you want to print the surface word instead.
    $entry="\t\"".$surface."\" ".$place."[en] ".$tag."\n";
}
echo $entry;  // View
fwrite($fp, $entry);  // Write
unset($entry);  // Clear the decks

?>