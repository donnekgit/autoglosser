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

// This file handles words tagged as 0 - ie they appear in multiple language dictionaries.  Since some items are mutated, we do a lookup also of the word minus soft-mutation (the other mutations are very rare).  If there is no entry, and the word is capitalised, we mark as a name; if not, we just repeat the surface word (or replace $surface with unk if you want to mark as unk[nown]).  Note that this 0 category also includes "mixed" words - words that combine morphemes from different languages.

//echo $surface."\n";
$desoftsurface=de_soft($surface);
//echo $desoftsurface."\n";

$dictlist=array();

$sql_z="select * from inlist where surface='$surface'";
$result_z=pg_query($db_handle,$sql_z) or die("Can't get the items");
while ($row_z=pg_fetch_object($result_z))
{   
    array_push($dictlist, $row_z->id);
    $lemma="\t\"".$row_z->lemma."\" ";
    $pos=$row_z->pos." ";
    $gender=($row_z->gender =='') ? "" : $row_z->gender." ";
    $number=($row_z->number =='') ? "" : $row_z->number." ";
    $tense=($row_z->tense =='') ? "" : $row_z->tense." ";
    $notes=($row_z->notes =='') ? "" : $row_z->notes." ";
    $enlemma=":".$row_z->enlemma.": ";
    $id="[".$row_z->id."]";
    $entry=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id)."\n"; 
    fwrite($fp, $entry);  // Write
    echo $entry;  // View
    unset($entry);  // Clear the decks
}

if ($desoftsurface!=$surface)
{
    $sql_sm="select * from inlist where surface~'^$desoftsurface$'";
    $result_sm=pg_query($db_handle,$sql_sm) or die("Can't get the items");
    while ($row_sm=pg_fetch_object($result_sm))
    {
        if (!in_array($row_sm->id, $dictlist))
        {
            array_push($dictlist, $row_sm->id);
            $lemma="\t\"".$row_sm->lemma."\" ";
            $pos=$row_sm->pos." ";
            $gender=($row_sm->gender =='') ? "" : $row_sm->gender." ";
            $number=($row_sm->number =='') ? "" : $row_sm->number." ";
            $tense=($row_sm->tense =='') ? "" : $row_sm->tense." ";
            $notes=($row_sm->notes =='') ? "" : $row_sm->notes." ";
            $enlemma=":".$row_sm->enlemma.": ";
            $id="[".$row_sm->id."]";
            $entry=pg_escape_string($lemma.$place."[in] ".$pos.$mutation.$gender.$number.$tense.$notes.$enlemma.$id." + sm")."\n"; 
            fwrite($fp, $entry);  // Write
            echo $entry;  // View
            unset($entry);  // Clear the decks
        }
    }
}

if (count($dictlist)<1)
{
    $tag=(preg_match("/^[A-ZÁ]/", $surface)) ? "name" : "unk";
    $entry="\t\"".$surface."\" ".$place."[in] ".$tag."\n";
    fwrite($fp, $entry); // Write
    echo $entry;  // View
    unset($entry);  // Clear the decks
}

?>
