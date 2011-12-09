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

$filename="histcorpus/groniosaw_split.txt";
$utterances="groniosaw_cgutterances";
$words="groniosaw_cgwords";

$fp = fopen("outputs/groniosaw/groniosaw_cg.txt", "w") or die("Can't create the file");

$sql="select * from $words order by utterance_id, location";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$surface=pg_escape_string($row->surface);  // Required to allow lookup of words containing an apostrophe.
    $utt=$row->utterance_id;
    $loc=$row->location;
    $place=" {".$utt.",".$loc."} ";
	//echo $row->surface."\n";

    $stream="\"<".$row->surface.">\"\n";  // Each surface form ends in a newline.

	echo $stream;
	fwrite($fp, $stream);

	include("lookups/cy_lookup.php");	
}

fclose($fp);

?>
