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

// This file handles dictionary lookups in the Spanish dictionary, eslist.  If your dictionary has a different name and different fields, change the table name and fieldnames that are used below to suit your ones.

$foundclitics='0';  // Set a marker

// Do clitic segmentation and lookup first.
$candidate=segment_clitics($surface);

if (preg_match("/.+#/", $candidate))  // Only do the clitic lookup if the segmentation has been in the middle of a word (eg tomar#se) (ie if there is a verb at the front), not in such cases as #la or #se (where we just have the clitic in standalone mode).  Note that this has to be a separate lookup from the non-clitic lookup below, to cover things like gen#te - if the two lookups are combined, gen#te will be found here, but there will be no entry for gen, so gente will be glossed as unknown.
{
    $first=preg_split("/#/", $candidate, 2);
    $clitic2=$first[1];
    $second=preg_split("/@/", $first[0], 2);
    $cliticverb=$second[0];
    $clitic1=$second[1];
    //echo "cliticverb: ".$cliticverb."\n";
    //echo "clitic1: ".$clitic1."\n";
    //echo "clitic2: ".$clitic2."\n";
    $prclitic1=(isset($clitic1)) ? " + ".$clitic1."[".clitic_pos($clitic1)."]" : "";
    $prclitic2=" + ".$clitic2."[".clitic_pos($clitic2)."]";

    $sql_cl="select * from eslist where surface='$cliticverb' and tense~'imper|infin'";  // We only need to lookup verbs.
    $result_cl=pg_query($db_handle,$sql_cl) or die("Can't get the items");
    if (pg_num_rows($result_cl)>0)  // Assuming we have a hit ...
    {
        $foundclitics='1';  // Set the marker to show this.
        while ($row_cl=pg_fetch_object($result_cl))
        {
            $lemma="\t\"".$row_cl->lemma."\" ";
            $pos=$row_cl->pos." ";
            $gender=($row_cl->gender =='') ? "" : $row_cl->gender." ";
            $number=($row_cl->number =='') ? "" : $row_cl->number." ";
            $tense=($row_cl->tense =='') ? "" : $row_cl->tense." ";
            $notes=($row_cl->notes =='') ? "" : $row_cl->notes." ";
            $enlemma=":".$row_cl->enlemma.": ";
            $id="[".$row_cl->id."]";
            $entry.=pg_escape_string($lemma.$place."[es] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id);
            $entry=$entry.$prclitic1.$prclitic2."\n";  // Attach the clitics we found earlier
            echo $entry;  // View
            fwrite($fp, $entry);  // Write
            unset($entry, $cliticverb, $prclitic1, $prclitic2);  // Clear the decks
        }
    }
}

// Now look up non-clitic forms.
$sql_es="select * from eslist where surface='$surface'";
$result_es=pg_query($db_handle,$sql_es) or die("Can't get the items");
if (pg_num_rows($result_es)>0)  // Assuming we have a hit ...
{
    while ($row_es=pg_fetch_object($result_es))
    {
        $lemma="\t\"".$row_es->lemma."\" ";
        $pos=$row_es->pos." ";
        $gender=($row_es->gender =='') ? "" : $row_es->gender." ";
        $number=($row_es->number =='') ? "" : $row_es->number." ";
        $tense=($row_es->tense =='') ? "" : $row_es->tense." ";
        $notes=($row_es->notes =='') ? "" : $row_es->notes." ";
        $enlemma=":".$row_es->enlemma.": ";
        $id="[".$row_es->id."]";
        $entry.=pg_escape_string($lemma.$place."[es] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id)."\n";
        echo $entry;  // View
        fwrite($fp, $entry);  // Write
        unset($entry);  // Clear the decks
    }
}
elseif ($foundclitics=='0')  // If there is no match, and there is not already a clitic interpretation ...
{
    $tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "unk";  // Need to adjust this so that it checks for lowercase versions of the word, eg Universidad
    $entry="\t\"".$surface."\" ".$place."[es] ".$tag."\n";
    echo $entry;  // View
    fwrite($fp, $entry);  // Write
    unset($entry);  // Clear the decks
}

?>
