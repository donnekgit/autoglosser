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


$target="inputs/siarad/beta";

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$results="cognate_results";
include("cognates/create_results_table.php");

$files=scandir($target);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		echo "Processing $filename\n";

		$sql_ext=query("select external, count(*) as number from ".$filename."_cognates group by external");
		while ($row_ext=pg_fetch_object($sql_ext))
		{
			if ($row_ext->external=="---") { $ext_na=$row_ext->number; }
			if ($row_ext->external=="ST") { $ext_st=$row_ext->number; }
			if ($row_ext->external=="NST") { $ext_nst=$row_ext->number; }
			if ($row_ext->external=="SNT") { $ext_snt=$row_ext->number; }
			if ($row_ext->external=="NSNT") { $ext_nsnt=$row_ext->number; }
		}

		$sql_int=query("select internal, count(*) as number from ".$filename."_cognates group by internal");
		while ($row_int=pg_fetch_object($sql_int))
		{
			if ($row_int->internal=="---") { $int_na=$row_int->number; }
			if ($row_int->internal=="ST") { $int_st=$row_int->number; }
			if ($row_int->internal=="NST") { $int_nst=$row_int->number; }
			if ($row_int->internal=="SNT") { $int_snt=$row_int->number; }
			if ($row_int->internal=="NSNT") { $int_nsnt=$row_int->number; }
		}
		
		$ext_st=(isset($ext_st)) ? $ext_st : 0;  // Set to 0 if there are no instances, or the insert query will fail.
		$ext_snt=(isset($ext_snt)) ? $ext_snt : 0;
		$int_st=(isset($int_st)) ? $int_st : 0;	
		$int_snt=(isset($int_snt)) ? $int_snt : 0;
		
		$write1=query("insert into $results (filename, ext_na, ext_st, ext_nst, ext_snt, ext_nsnt, int_na, int_st, int_nst, int_snt, int_nsnt) values ('$filename', $ext_na, $ext_st, $ext_nst, $ext_snt, $ext_nsnt, $int_na, $int_st, $int_nst, $int_snt, $int_nsnt)");
	}
	
	unset($ext_na, $ext_st, $ext_nst, $ext_snt, $ext_nsnt, $int_na, $int_st, $int_nst, $int_snt, $int_nsnt);
}

?>