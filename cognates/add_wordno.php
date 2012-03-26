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

// This script adds a wordno column to the table, and then populates that column with a serial number for all words in the table, excluding punctuation, to allow import of a corrected clause-split.  The script is pretty slow :-(.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

add_integer_column_if_not_exist($words, "wordno");

$sql_clear=query("update $words set wordno=0");

$j=1;  // start counter for words

$sql1="select *  from $words where langid!='999' order by utterance_id, location";  // List all words in the table, excluding punctuation.
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$sql_word=query("update $words set wordno=$j where utterance_id=$row1->utterance_id and location=$row1->location");
	$j++;
}

?>
