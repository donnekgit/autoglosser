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

/*
This script runs through a directory of files, getting first the figures for a particular language, and then the totals.  These are inserted into a db table, and then the percentage of words in the file in that language is calculated from the two figures and also inserted into the table.
*/

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$percent="percent_miami";

$lines=file("outputs/$filename/$filename.header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	if (preg_match("/@Languages/", $line))
	{
		$langs=preg_replace("/@Languages:\t/", "", $line);  // Get the language tags.
	}
}

$sql_s="select count(*) from $words where langid='spa'";
$result_s=pg_query($db_handle,$sql_s) or die("Can't insert the items");
while ($row_s=pg_fetch_object($result_s))
{
	$spa_words=$row_s->count;
}

$sql_e="select count(*) from $words where langid='eng'";
$result_e=pg_query($db_handle,$sql_e) or die("Can't insert the items");
while ($row_e=pg_fetch_object($result_e))
{
	$eng_words=$row_e->count;
}

$sql_t="select count(*) from $words where langid!='999'";
$result_t=pg_query($db_handle,$sql_t) or die("Can't insert the items");
while ($row_t=pg_fetch_object($result_t))
{
	$total_words=$row_t->count;
}

$spa_percent=$spa_words / $total_words * 100;  // express language words as a percentage of the total
$eng_percent=$eng_words / $total_words * 100;  // express language words as a percentage of the total

$sql="insert into $percent (filename, spa_words, eng_words, total_words, langs, spa_percent, eng_percent) values ('$filename', $spa_words, $eng_words, $total_words, '$langs', $spa_percent, $eng_percent)";
$result=pg_query($db_handle,$sql) or die("Can't insert the items");

?>





















