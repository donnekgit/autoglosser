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

// Create the utterances table.
//$filename="histcorpus/groniosaw_split.txt";
//$utterances="groniosaw_cgutterances";
//$words="groniosaw_cgwords";
$filename="histcorpus/ryan.txt";
$utterances="ryan_cgutterances";
$words="ryan_cgwords";

drop_existing_table($words);

$sql_table = "
CREATE TABLE $words (
    word_id serial NOT NULL,
    utterance_id integer,
    location integer,
    orig_surface character varying(100),
    surface character varying(100),
    auto character varying(250),
    filename character varying(50)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$words." ADD CONSTRAINT ".$words."_pk PRIMARY KEY (word_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);


$sql="select * from $utterances order by utterance_id";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	echo $oldutt="(".$row->utterance_id.") ".$row->surface."\n";
	$newutt=$row->surface;

    $i=1;   

	$surface_words=explode(' ', $newutt);

    foreach ($surface_words as $surface_word)
    {
		echo $surface_word."\n";
        $surface_word=pg_escape_string(trim($surface_word));
        $clean_word=wordclean_hist($surface_word);

		$sql_w=query("insert into $words (utterance_id, location, orig_surface, surface, filename) values ('$row->utterance_id', '$i', '$surface_word', '$clean_word', '$row->filename')");

        $i=++$i; 
	} 

	unset($newutt);
}

$sql_as="select * from groniosaw_cgwords w, archaic_spelling a where w.surface=a.old_spelling order by surface";
$result_as=pg_query($db_handle,$sql_as) or die("Can't get the items");
while ($row_as=pg_fetch_object($result_as))
{
	$old_spelling=pg_escape_string($row_as->old_spelling);
	query("update $words set surface='$row_as->new_spelling' where surface='$old_spelling'");
}

?>
