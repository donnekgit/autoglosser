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

// This script collects unknown words in a specific language  from a file and puts them into the specified table.  Run as: php utils/gather_unknowns.php <file> <table> <language>

$unknowns=$_SERVER['argv'][2];
$mylang=$_SERVER['argv'][3];

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql_fill="insert into $unknowns (surface, filename) select surface, filename from $words where auto='unk' and langid='$mylang' group by surface, filename order by surface";  // Retrieve unique unknowns from each file

$result_fill=pg_query($db_handle, $sql_fill);

$sql_unique=query("create table ".$unknowns."_uniq as select surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra from $unknowns group by surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra order by surface");
// Create a new table with unique entries across all files

?>
