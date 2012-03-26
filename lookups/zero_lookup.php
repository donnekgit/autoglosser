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

// This file handles words tagged as indeterminate )) in the old marking) - ie they appear in the dictionaries of more than one language (though they may be spelt differently).  They are marked @s:cym+spa, etc, and included in the transcriptions using the orthography of the language with the most speakers.  This category also includes "mixed" words - words that combine morphemes from different languages, which are marked @s:spa+cym.

// First, decide what the major language is.  Try to do something about the foreign morphemes.  (NOTE - This works, but it really only applies to one form in the entire corpus - corral_iau - so it may be overkill.)  Since some items are mutated, do a lookup also of the word minus soft-mutation (the other mutations are very rare).  If there is no entry, and the word is capitalised, mark as a name; if not, replace $surface with unk to mark as unk[nown] (or replace "unk" here with "$surface" if you want to repeat the surface word).  

// NOTE: The lookup code is too repetitious.  Ideally, it should be refactored as with the Welsh, so that this page just calls the lookup page for the relevant language.  However, adding the desoft clause to English and Spanish might result in a lot of false hits, so this needs to be carefully tested first.  For the time being, it is left as is.

/*
// For testing purposes: (also disable fwrite commands if desired)
include("includes/fns.php");
include("/opt/autoglosser/config.php");
// $surface="ceir_s";
$surface="cruz_io";
echo $surface."\n";
// $langid="cym+eng";
$langid="spa+cym";
echo $langid."\n";
*/

/*
preg_match("/(?P<mainlg>\w{3})&(?P<otherlg>\w{3})/", $langid, $language);  // Get the languages.
$mainlg=$language[mainlg];
$otherlg=$language[otherlg];
echo $mainlg."\n";
echo $otherlg."\n";
*/

switch ($langid) // Look up the relevant main language based on the langid tag.  The main language is the one with the greatest number of speakers, whose orthography is used for the word.
{
	case "cym&spa":
		$mainlg="spa";
		break;
	case "spa+cym":
		$mainlg='spa';
		break;
	case "cym&eng":
		$mainlg='eng';
		break;
	case "eng+cym":
		$mainlg='eng';
		break;
	case "cym+eng":
		$mainlg='cym';
		break;
	case "cym+spa":
		$mainlg='cym';
		break;
}

if (preg_match("/_i?o/", $surface))
{
		$surface=preg_replace("/_i?o/", "", $surface);  // Remove _io or _o endings from the word.
}
elseif (preg_match("/_(s|iau)/", $surface))
{
	$surface=preg_replace("/_(s|iau)/", "", $surface);  // Remove _s or _iau endings from the word.
	$plusmark="pl";
}

$desoftsurface=de_soft($surface);
//echo $desoftsurface."\n";

$dictlist=array();

if ($mainlg=='eng')
{
	// Do clitic segmentation and lookup first.
	$candidate=segment_engforin($surface);
	//echo $candidate."\n";
	//$desoftcandidate=segment_engforin($desoftsurface);
	//echo $desoftcandidate."\n";

	// Look up clitic forms
	if (preg_match("/.+#/", $candidate))
	{
		$first=preg_split("/#/", segment_engforin($candidate), 2);
		$seg2=$first[1];  // The found clitic.
		//echo $seg2."\n";
		$main=$first[0];
		$main=fix_seg($main);  // The target word without clitic.
		$desoftmain=de_soft($main);
		//echo $main."\n";

		$prseg2=($seg2!="") ? " # ".$seg2 : "";  // Format the clitic to print out in the CG cohort line.
		//echo $prseg2."\n";
		//$cgline=$main.$prseg2;
		//echo $candidate. " --- ".$cgline."\n";

		$sql_en="select * from enlist where surface='$main'";
		$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");
		while ($row_en=pg_fetch_object($result_en))
		{
			array_push($dictlist, $row_en->id);
			$lemma="\t\"".$row_en->lemma."\" ";
			$pos=$row_en->pos." ";
			$gender=($row_en->gender =='') ? "" : $row_en->gender." ";
			$number=($row_en->number =='') ? "" : $row_en->number." ";
			$tense=($row_en->tense =='') ? "" : $row_en->tense." ";
			$notes=($row_en->notes =='') ? "" : $row_en->notes." ";
			$enlemma=":".$row_en->enlemma.": ";
			$id="[".$row_en->id."]";
			if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in eng+cym.
			$entry.=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id);
			$entry=$entry.$prseg2."\n";  // Attach the endings we found earlier
			fwrite($fp, $entry);  // Write
			echo $entry;  // View
			unset($entry, $main);  // Clear the decks
		}

		if ($desoftmain!=$main)
		{
			$sql_sm="select * from enlist where surface~'^$desoftmain$'";  // We use this format instead of = in order to handle alternates like [mb].
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
					if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in eng+cym.
					$entry=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id." + sm"); 
					$entry=$entry.$prseg2."\n";  // Attach the endings we found earlier
					fwrite($fp, $entry);  // Write
					echo $entry;  // View
					unset($entry);  // Clear the decks
				}
			}
		}
		unset($prseg2);  // The endings need to be cleared here, or when there is more than one hit in the cohort, hits other than the first one will not have the ending appended.
	}  // End clitic form lookup.

	$sql_z="select * from enlist where surface='$surface'";
	$result_z=pg_query($db_handle,$sql_z) or die("Can't get the items");
	while ($row_z=pg_fetch_object($result_z))
	{
		if (!in_array($row_z->id, $dictlist))
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
			if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in eng+cym.
			$entry=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id)."\n"; 
			fwrite($fp, $entry);  // Write
			echo $entry;  // View
			unset($entry);  // Clear the decks
		}
	}

	if ($desoftsurface!=$surface)
	{
		$sql_y="select * from enlist where surface~'^$desoftsurface$'";
		$result_y=pg_query($db_handle,$sql_y) or die("Can't get the items");
		while ($row_y=pg_fetch_object($result_y))
		{
			if (!in_array($row_y->id, $dictlist))
			{
				array_push($dictlist, $row_y->id);
				$lemma="\t\"".$row_y->lemma."\" ";
				$pos=$row_y->pos." ";
				$gender=($row_y->gender =='') ? "" : $row_y->gender." ";
				$number=($row_y->number =='') ? "" : $row_y->number." ";
				$tense=($row_y->tense =='') ? "" : $row_y->tense." ";
				$notes=($row_y->notes =='') ? "" : $row_y->notes." ";
				$enlemma=":".$row_y->enlemma.": ";
				$id="[".$row_y->id."]";
				if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in eng+cym.
				$entry=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id." + sm")."\n"; 
				fwrite($fp, $entry);  // Write
				echo $entry;  // View
				unset($entry);  // Clear the decks
			}
		}
	}
}  // End of English lookup.

if ($mainlg=='spa')
{
	$sql_a="select * from eslist where surface='$surface'";
	$result_a=pg_query($db_handle,$sql_a) or die("Can't get the items");
	while ($row_a=pg_fetch_object($result_a))
	{  
		if (!in_array($row_a->id, $dictlist))
		{
			array_push($dictlist, $row_a->id);
			$lemma="\t\"".$row_a->lemma."\" ";
			$pos=$row_a->pos." ";
			$gender=($row_a->gender =='') ? "" : $row_a->gender." ";
			$number=($row_a->number =='') ? "" : $row_a->number." ";
			$tense=($row_a->tense =='') ? "" : $row_a->tense." ";
			$notes=($row_a->notes =='') ? "" : $row_a->notes." ";
			$enlemma=":".$row_a->enlemma.": ";
			$id="[".$row_a->id."]";
			if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in spa+cym.
			$entry=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id)."\n"; 
			fwrite($fp, $entry);  // Write
			echo $entry;  // View
			unset($entry);  // Clear the decks
		}
	}
	
	if ($desoftsurface!=$surface)
	{
		$sql_b="select * from eslist where surface~'^$desoftsurface$'";
		$result_b=pg_query($db_handle,$sql_b) or die("Can't get the items");
		while ($row_b=pg_fetch_object($result_b))
		{
			if (!in_array($row_b->id, $dictlist))
			{
				array_push($dictlist, $row_b->id);
				$lemma="\t\"".$row_b->lemma."\" ";
				$pos=$row_b->pos." ";
				$gender=($row_b->gender =='') ? "" : $row_b->gender." ";
				$number=($row_b->number =='') ? "" : $row_b->number." ";
				$tense=($row_b->tense =='') ? "" : $row_b->tense." ";
				$notes=($row_b->notes =='') ? "" : $row_b->notes." ";
				$enlemma=":".$row_b->enlemma.": ";
				$id="[".$row_b->id."]";
				if (isset($plusmark) and ($pos=='n')) { $number=$plusmark; }  // Over-ride $number for nouns only if there is a plural marker after + in spa+cym.
				$entry=pg_escape_string($lemma.$place."[in] ".$pos.$gender.$number.$tense.$notes.$enlemma.$id." + sm")."\n"; 
				fwrite($fp, $entry);  // Write
				echo $entry;  // View
				unset($entry);  // Clear the decks
			}
		}
	}
}  // End of Spanish lookup.

if ($mainlg=='cym')  // Welsh lookup - just pass everything to the Welsh lookup page.  Only used for cym+eng and cym+spa.  For cym&eng and cym&spa, would it be a good idea to look up the word in the eng or spa dictionaries first, and then if no match is found, use the cym dictionary?
{
	include("cy_lookup.php");  // Pass the word to the normal Welsh lookup.
}  // End of Welsh lookup.

if (count($dictlist)<1)
{
    $tag=(preg_match("/^[A-ZÁ]/", $surface)) ? "name" : "unk";
    $entry="\t\"".$surface."\" ".$place."[in] ".$tag."\n";
    fwrite($fp, $entry); // Write
    echo $entry;  // View
    unset($entry);  // Clear the decks
}

?>
