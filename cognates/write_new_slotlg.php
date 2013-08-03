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

// This script compiles a slotlg for _diana files that does not contain cognate slotholders (T for trigger).
// Could be used to add a new field to the jumbo file.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Uncomment to test a particular file.
//$filename="stammers4";
//$cognates=$filename."_diana";

$sql=query("select * from cp_biling order by slotlg;");
//$sql=query("select * from $cognates order by clause_id;");
while ($row=pg_fetch_object($sql))
{
	$langid=$row->langid;
	$langs=explode(" ", trim($langid));

	foreach ($langs as $lang)
	{
		if ($lang=="cym")
		{
			$slot="1";
		}
		elseif ($lang=="eng")
		{
			$slot="2";
		}
		elseif ($lang=="spa")
		{
			$slot="3";
		}
		elseif ($lang=="cym&eng")
		{
			$slot="0";
		}
		elseif ($lang=="eng&spa")
		{
			$slot="0";
		}
		$slotlg2.=$slot;
	}
	echo $slotlg2."\n";
	$write=query("update cp_biling set newslotlg='$slotlg2' where id=$row->id;");
	unset($slotlg2);
}

?>