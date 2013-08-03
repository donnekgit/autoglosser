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

// This script gets the number of words occurring in clauses of ordinality n.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$nuked=$words."_nuked";
// $nuked="stammers4_cgwords_nuked";
echo $nuked."\n";


$sql=query("select clauseno, count(*) as count from $nuked where langid!='999' group by clauseno order by clauseno;");
while ($row=pg_fetch_object($sql))
{
	$clause_length=$row->clauseno;
	$count=$row->count;
	
	echo $clause_length.": ";
	echo $count."\n";
	echo "\n";

	$sql3=query("insert into clause_length (filename, clause_length, total) values ('$filename', $clause_length, $count);");

}

?>