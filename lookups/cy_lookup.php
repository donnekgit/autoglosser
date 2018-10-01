<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// This file handles dictionary lookups in the Welsh dictionary, cylist.  First, the surface word is demutated, and then each of these is looked up, but only where the demutated word is actually different from the surface word.  Note that demutated words need to be looked up separately since in a few cases there are homophonous pairs, one with a mutation and one without.

//echo $surface."\n";
$desoftsurface=de_soft($surface);
//echo $desoftsurface."\n";
$denassurface=de_nas($surface);
//echo $denassurface."\n";
$deaspsurface=de_asp($surface);
//echo $deaspsurface."\n";
$dehsurface=de_h($surface);
//echo $dehsurface."\n";

$dictlist=array();

$sql_cy="select * from cylist where surface='$surface'";
$result_cy=pg_query($db_handle,$sql_cy) or die("Can't get the items");
while ($row_cy=pg_fetch_object($result_cy))
{   
    array_push($dictlist, $row_cy->id);
    $lemma="\t\"".$row_cy->lemma."\" ";
    $pos=$row_cy->pos." ";
    $gender=($row_cy->gender =='') ? "" : $row_cy->gender." ";
    $number=($row_cy->number =='') ? "" : $row_cy->number." ";
    $tense=($row_cy->tense =='') ? "" : $row_cy->tense." ";
    $notes=($row_cy->notes =='') ? "" : $row_cy->notes." ";
    $enlemma=":".$row_cy->enlemma.": ";
    $id="[".$row_cy->id."]";
    if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in cym+eng.
    $entry=pg_escape_string($lemma.$place."[cy] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id)."\n"; 
    fwrite($fp, $entry);  // Write
    echo $entry;  // View
    unset($entry);  // Clear the decks
}

if ($desoftsurface!=$surface)
{
    $sql_sm="select * from cylist where surface~'^$desoftsurface$'";  // We use this format instead of = in order to handle alternates like [mb].
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
            if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in cym+eng.
            if( empty($mutation) ) { $mutation = ''; }
            $entry=pg_escape_string($lemma.$place."[cy] ".$pos.$mutation.$gender.$number.$tense.$notes.$enlemma.$id." + sm")."\n"; 
            fwrite($fp, $entry);  // Write
            echo $entry;  // View
            unset($entry);  // Clear the decks
            
        }
    }
}

if ($denassurface!=$surface)
{
    $sql_nm="select * from cylist where surface='$denassurface'";
    $result_nm=pg_query($db_handle,$sql_nm) or die("Can't get the items");
    while ($row_nm=pg_fetch_object($result_nm))
    {
        if (!in_array($row_nm->id, $dictlist))
        {
            array_push($dictlist, $row_nm->id);
            $lemma="\t\"".$row_nm->lemma."\" ";
            $pos=$row_nm->pos." ";
            $gender=($row_nm->gender =='') ? "" : $row_nm->gender." ";
            $number=($row_nm->number =='') ? "" : $row_nm->number." ";
            $tense=($row_nm->tense =='') ? "" : $row_nm->tense." ";
            $notes=($row_nm->notes =='') ? "" : $row_nm->notes." ";
            $enlemma=":".$row_nm->enlemma.": ";
            $id="[".$row_nm->id."]";
            if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in cym+eng.
            $entry=pg_escape_string($lemma.$place."[cy] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id." + nm")."\n"; 
            fwrite($fp, $entry);  // Write
            echo $entry;  // View
            unset($entry);  // Clear the decks
        }
    }
}

if ($deaspsurface!=$surface)
{
    $sql_am="select * from cylist where surface='$deaspsurface'";
    $result_am=pg_query($db_handle,$sql_am) or die("Can't get the items");
    while ($row_am=pg_fetch_object($result_am))
    {
        if (!in_array($row_am->id, $dictlist))
        {
            array_push($dictlist, $row_am->id);
            $lemma="\t\"".$row_am->lemma."\" ";
            $pos=$row_am->pos." ";
            $gender=($row_am->gender =='') ? "" : $row_am->gender." ";
            $number=($row_am->number =='') ? "" : $row_am->number." ";
            $tense=($row_am->tense =='') ? "" : $row_am->tense." ";
            $notes=($row_am->notes =='') ? "" : $row_am->notes." ";
            $enlemma=":".$row_am->enlemma.": ";
            $id="[".$row_am->id."]";
            if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in cym+eng.
            $entry=pg_escape_string($lemma.$place."[cy] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id." + am")."\n"; 
            fwrite($fp, $entry);  // Write
            echo $entry;  // View
            unset($entry);  // Clear the decks
        }
    }
}

if ($dehsurface!=$surface)
{
    $sql_h="select * from cylist where surface='$dehsurface'";
    $result_h=pg_query($db_handle,$sql_h) or die("Can't get the items");
    while ($row_h=pg_fetch_object($result_h))
    {
        if (!in_array($row_h->id, $dictlist))
        {
            array_push($dictlist, $row_h->id);
            $lemma="\t\"".$row_h->lemma."\" ";
            $pos=$row_h->pos." ";
            $gender=($row_h->gender =='') ? "" : $row_h->gender." ";
            $number=($row_h->number =='') ? "" : $row_h->number." ";
            $tense=($row_h->tense =='') ? "" : $row_h->tense." ";
            $notes=($row_h->notes =='') ? "" : $row_h->notes." ";
            $enlemma=":".$row_h->enlemma.": ";
            $id="[".$row_h->id."]";
            if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in cym+eng.
            $entry=pg_escape_string($lemma.$place."[cy] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id." + h")."\n"; 
            fwrite($fp, $entry);  // Write
            echo $entry;  // View
            unset($entry);  // Clear the decks
        }
    }
}

if (count($dictlist)<1)
{
    $tag=(preg_match("/^[A-ZÁ]/", $surface)) ? "name" : "unk";
    $entry="\t\"".$surface."\" ".$place."[cy] ".$tag."\n";
    fwrite($fp, $entry); // Write
    echo $entry;  // View
    unset($entry);  // Clear the decks
}

?>
