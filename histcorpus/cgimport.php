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

include("includes/fns.php");
include("/opt/autoglosser/config.php");

// Create the utterances table.
$filename="histcorpus/groniosaw_split.txt";
$utterances="groniosaw_cgutterances";

echo "*\n*\nCreating the $utterances table\n*\n*\n";
drop_existing_table($utterances);

$sql_table = "
CREATE TABLE $utterances (
    utterance_id serial NOT NULL,
    surface text,
    filename character varying(50)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$utterances." ADD CONSTRAINT ".$utterances."_pk PRIMARY KEY (utterance_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

$lines=file($filename, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

//print_r($lines);

$i=1;  // start counter for utterances

foreach ($lines as $line)
{
	echo $i.": ".$line."\n";	
	$line=pg_escape_string(trim($line));
	$sql=query("insert into $utterances (surface, filename) values ('$line', 'groniosaw')");
	$i++;
}






?>