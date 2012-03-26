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

// This script takes an edited clause-split file (originally produced by cognates/cyp_segment.php, and then manually corrected), and uses it to mark clause-beginnings in the original table.  You need to have added a wordno serial to the table first, using cognates/add_wordno.php.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$import="cypriot/outputs/imports/mp_{$filename}_import.txt";

$j=1;  // Start counter for clause-initial words.  Needs to be set to 1 for files that contain a speaker id, and to 0 for files that do.
$wordno="1";

$sql_blank=query("update $words set clause='', clauseno=0");

$lines=file($import, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
		$line=preg_replace("/[A-Z]{3}:/", "", $line);  // Delete the speaker_id.
		$line=preg_replace("/\s+/", " ", $line);  // Squash more than one space down to one.
		
		$lgwords=explode(' ', trim($line));  // Split the remaining surface line into words.
        echo $j."(+ ".count($lgwords)."): ".$line."\n";

        $j=$j+count($lgwords);
        
        $wordno=$wordno.",".$j;        
}

$wordno=preg_replace("/,\d*$/","",$wordno);
echo $wordno;

$sql_clause=query("update $words set clause='c' where wordno in ($wordno)");

?>
