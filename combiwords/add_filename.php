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

// This script inserts the filenames from the original source table into the table with the unique (grouped) entries.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$corpus="siar";

$source_table="combiwords_".$corpus;
$uniq="combiwords_".$corpus."_uniq";

$filelist=array();

// If the processing stops at a particular point because of an error, you can fix the error and restart from that point by using something like the following:
//$sql="select * from $uniq where surface > 'firme' order by surface";
$sql="select * from $uniq order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$surface=pg_escape_string($row->surface);
	$auto=pg_escape_string($row->auto);
	//echo $surface."\n";
	$langid=$row->langid;
	$sql_f="select * from $source_table where surface='$surface' and auto='$auto' and langid='$langid'";
	#$sql_f="select * from $source_table where surface='$surface' and langid='$langid'";
	$result_f=pg_query($db_handle,$sql_f) or die("Can't get the items");
	while ($row_f=pg_fetch_object($result_f))
	{
		//$file=preg_replace("/patagonia/", "", $row_f->filename);  // Remove identical prefix from each filename (patagonia).
		$file=$row_f->filename;  // Or use the full filename (miami, siarad).
        $filelist[]=$file;  // Add the filename to an array.
     }
     //print_r($filelist);
	$filelist=array_unique($filelist);  // Discard filename duplicates.
	sort($filelist);  // Sort into ascending order.
	$fileline=implode(",", $filelist);  // Convert the array into a string.
	
	$sql_2="update $uniq set filename='$fileline' where surface='$surface' and auto='$auto' and langid='$langid'";
	#$sql_2="update $uniq set filename='$fileline' where surface='$surface' and langid='$langid'";
	$result_2=pg_query($db_handle,$sql_2) or die("Can't insert the items");
	
	echo $row->surface." - ".$fileline."\n";
	
	unset($filelist, $fileline);
}
?>