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

/*
$surface="that's";
$surface=pg_escape_string($surface);
include("includes/fns.php");
include("/opt/autoglosser/config.php");
*/

$foundclitics='0';  // Set a marker

// Do clitic segmentation and lookup first.
$candidate=segment_eng($surface);
//echo $candidate."\n";

// Look up clitic forms
if (preg_match("/.+#/", $candidate))
{
	$first=preg_split("/#/", segment_eng($candidate), 2);
	$seg2=$first[1];
	//echo $seg2."\n";
	$main=$first[0];
	$main=fix_seg($main);
	//echo $main."\n";
/*
	if ($seg2!="")
	{
		$prseg2="+".strtoupper($seg2);
	}
	else
	{
		$prseg2="";
	}
*/
	$prseg2=($seg2!="") ? " # ".$seg2 : "";
	//echo $prseg2."\n";
	//$cgline=$main.$prseg2;
	//echo $candidate. " --- ".$cgline."\n";

	$sql_en="select * from enlist where surface='$main'";
	$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");
	if (pg_num_rows($result_en)>0)
	{
		$foundclitics='1';  // Set the marker to show this.
		while ($row_en=pg_fetch_object($result_en))
		{
			$lemma="\t\"".$row_en->lemma."\" ";
			$pos=$row_en->pos." ";
			$gender=($row_en->gender =='') ? "" : $row_en->gender." ";
			$number=($row_en->number =='') ? "" : $row_en->number." ";
			$tense=($row_en->tense =='') ? "" : $row_en->tense." ";
			$notes=($row_en->notes =='') ? "" : $row_en->notes." ";
			$enlemma=":".$row_en->enlemma.": ";
			$id="[".$row_en->id."]";
			$entry.=$lemma.$place."[en] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id;
			$entry=$entry.$prseg2."\n";  // Attach the endings we found earlier
            echo $entry;  // View
            fwrite($fp, $entry);  // Write
            unset($entry, $main, $prseg2);  // Clear the decks
		}
	}
}

// Now look up non-clitic forms.
//echo $surface."\n";
$sql_en="select * from enlist where surface='$surface'";
$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");
if (pg_num_rows($result_en)>0)
{
    while ($row_en=pg_fetch_object($result_en))
    {
        $lemma="\t\"".$row_en->lemma."\" ";
        $pos=$row_en->pos." ";
        $gender=($row_en->gender =='') ? "" : $row_en->gender." ";
        $number=($row_en->number =='') ? "" : $row_en->number." ";
        $tense=($row_en->tense =='') ? "" : $row_en->tense." ";
        $notes=($row_en->notes =='') ? "" : $row_en->notes." ";
        $enlemma=":".$row_en->enlemma.": ";
        $id="[".$row_en->id."]";
        $entry.=$lemma.$place."[en] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id."\n";
        echo $entry;  // View
        fwrite($fp, $entry);  // Write
        unset($entry);  // Clear the decks
    }
}
elseif ($foundclitics=='0')  // If there is no match, and there is not already a clitic interpretation ...
{
    $tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "unk";  // Replace unk with $surface if you want to print the surface word instead.
    $entry="\t\"".$surface."\" ".$place."[en] ".$tag."\n";
    echo $entry;  // View
    fwrite($fp, $entry);  // Write
    unset($entry);  // Clear the decks
}

?>