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

// This script logs the length and POS for multiword English insertions.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

include("insertions/create_insertion_multiword_analysis.php");

$sql1=query("select * from insertions_multiword where slotlg ~ '22+';");  // Get all the instances of multiword insertions.
while ($row1=pg_fetch_object($sql1))
{
	echo $row1->slotlg."\n";
	echo $row1->langid."\n";
	echo $row1->surface."\n";
	$surface=pg_escape_string($row1->surface);
	$auto=pg_escape_string($row1->auto);

	$langs=explode(" ", $row1->langid);
	$surfaces=explode(" ", $surface);
	$autos=explode(" ", $auto);
	
	$j=1;
	foreach ($langs as $langkey=>$lang)
	{
// 		echo $langkey.": ".$lang."\n";
// 		if ($lang=="eng" and $langs[$langkey-1] != 'cym&eng')
		if ($lang=="eng")
		{
// 			echo $langkey."\n";
			$insert[$j][surface].=$surfaces[$langkey]." ";
			$insert[$j][auto].=$autos[$langkey]." ";

			if ($langs[$langkey+1]=='cym' or $langs[$langkey+1]=='cym&eng')
			{
				$j++;
			}
		}
	}
	
	foreach ($insert as $stretch)
	{
		echo $stretch[surface]."\n";
		$length=explode(" ", $stretch[surface]);
		$result=count($length)-1;
		echo $result."\n";
// 		echo $stretch[auto]."\n";
		
		$pos=preg_replace("/[a-z]*/", "", $stretch[auto]);
		$pos=preg_replace("/(^| )\./", " ", $pos);
		$pos=trim($pos);
		echo $pos."\n";
		
		$write1=query("insert into insertion_multiword_analysis (slotlg, clause_id, utterance_id, filename, insertion, length, gloss, pos, surface, auto, verblg, langid, speaker) values ('$row1->slotlg', $row1->clause_id, $row1->utterance_id, '$row1->filename', '$stretch[surface]', $result, '$stretch[auto]', '$pos', '$surface', '$auto', '$row1->verblg', '$row1->langid', '$row1->speaker');");
	}
	
	unset($insert);
	echo "\n";
}

?>
