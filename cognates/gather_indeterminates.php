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

// This script gathers indeterminate items in a set of directory files

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$target_dir="inputs/siarad/alpha";  // Set the directory here

$dir=$target_dir;
$all_files=scandir($dir);

//print_r($all_files);

$ignore=array(".", "..", ".directory");
$all_files=array_diff($all_files,$ignore);

foreach ($all_files as $key=>$myfile)
{
	$filename=strtolower(basename(preg_replace("/\..*$/", "", $myfile)));
	
	echo "Trawling $filename\n";
	
	// IMs
	$sql_im=query("insert into siarad_im (filename, surface, count) select filename, surface, count(surface) from ".$filename."_cgwords where langid='cym&eng' and auto~'\.IM' group by surface, filename order by surface");

	// Names (proper nouns)
	$sql_pn=query("insert into siarad_name (filename, surface, count) select filename, surface, count(surface) from ".$filename."_cgwords where langid='cym&eng' and auto='name' group by surface, filename order by surface");

	// Everything else
	$sql_ee=query("insert into siarad_cognates (filename, surface, count) select filename, surface, count(surface) from ".$filename."_cgwords where langid='cym&eng' and auto!='name' and auto!~'\.IM' group by surface, filename order by surface");

	// English words
	$sql_eng=query("insert into siarad_eng (filename, surface, count) select filename, surface, count(surface) from ".$filename."_cgwords where langid='eng' group by surface, filename order by surface");
}

?>