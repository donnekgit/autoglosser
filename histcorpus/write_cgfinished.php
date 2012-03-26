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

if (!isset($chain))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
}

// $filename="histcorpus/groniosaw_split.txt";
// $utterances="groniosaw_cgutterances";
// $words="groniosaw_cgwords";
// $cgfinished="groniosaw_cgfinished";
$filename="histcorpus/ryan.txt";
$utterances="ryan_cgutterances";
$words="ryan_cgwords";
$cgfinished="ryan_cgfinished";

echo "*\n*\nCreating the $cgfinished table\n*\n*\n";
drop_existing_table($cgfinished);

$sql_table = "
CREATE TABLE $cgfinished (
    id serial NOT NULL,
	utterance_id integer,
	location integer,
	surface character varying(100),
    lemma character varying(100),
    enlemma character varying(100),
    pos character varying(200),
    extra character varying(100),
	seg character varying(100)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$cgfinished." ADD CONSTRAINT ".$cgfinished."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

//$lines=file("outputs/groniosaw/groniosaw_cg_applied.txt");  // Open input file.
$lines=file("outputs/ryan/ryan_cg_applied.txt");  // Open input file.
     
foreach ($lines as $line_num => $line)
{
    if (preg_match("/^\"</", $line))
    {
        preg_match("/<(?P<surface>.*)>/", $line, $quote);  // Get the surface form.
        $surface=$quote[surface];
        //echo $surface."\n";
    }
    elseif (preg_match("/^\t\"/", $line))  // Lines with the lexeme (lemma).
    {
		preg_match("/\"(?P<lemma>.+)\"/", $line, $mylemma);  // Get the lemma.
        $lemma=$mylemma[lemma];

		preg_match("/ :(?P<enlemma>.+): /", $line, $myenlemma);  // Get the enlemma.
        $enlemma=$myenlemma[enlemma];

        preg_match("/{(?P<utt>\d+),(?P<loc>\d+)}/", $line, $place);  // Get the place (utterance, location).
        $utt=$place[utt];
        $loc=$place[loc];
        //echo $utt.",".$loc."\n";

        preg_match("/\[(?P<langid>\w\w)\]/", $line, $language);  // Get the language.
        $langid=$language[langid];
        //echo $langid."\n";

        preg_match("/\[(?P<dictid>\d+)\]/", $line, $dict);  // Get the dictionary entry by id.
        $dictid=$dict[dictid];
        //echo $dictid."\n";

		preg_match("/\] (?P<subtags>.+) :/", $line, $subtag);  // Get any rewritten (substituted) tags as one string.
        $subtags=$subtag[subtags];
		$subtags=preg_replace("/ /", ".", $subtags);  // Insert a dot between POS tags.
        //echo $subtags."\n";

        preg_match("/\+ (?P<extras>.+)$/", $line, $extra);  // Get any clitics, eg +sm.
        $extras=$extra[extras];
        //echo $extras."\n";
		$extras=preg_replace('/ # .*/','', $extras);  // Where a segmentation follows, it will be included, so remove it.

		preg_match("/# (?P<segs>.+)$/", $line, $seg);  // Get any segmentations and accompanying POS rewrites, eg +pl.
        $segs=$seg[segs];
        //echo $segs."\n";

		if(preg_match("/ name$/", $line)){$enlemma='name';}  // To avoid trapping "namely".
		if(preg_match("/ unk$/", $line)){$enlemma='unk';}
		echo $utt."/".$loc." - ".$langid." - ".$surface." - ".$enlemma." - ".$subtags." - ".$extras." - ".$segs."\n";
		$surface=pg_escape_string($surface);  // To handle apostrophes in the entry.
		$sql_k="insert into $cgfinished(utterance_id, location, surface, lemma, enlemma, pos, extra, seg) values ('$utt', '$loc', '$surface', '$lemma', '$enlemma', '$subtags', '$extras', '$segs')";
		$result_k=pg_query($db_handle,$sql_k) or die("Can't insert the items");
	}
}

?>
