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

// This script sets up one entry for each English insertion instance, and logs the POS for the insertion.
// This looks at words only - ie it chops up multiword insertions into single words.
//  First, collect all the instances via utils/sh_pg_stuff and db queries into a table called "insertions_all".

include("includes/fns.php");
include("/opt/autoglosser/config.php");

include("insertions/create_insertion_analysis.php");

$sql1=query("select * from insertions_all;");  // Get all the instances of insertions.
while ($row1=pg_fetch_object($sql1))
{
	echo $row1->slotlg."\n";
	echo $row1->surface."\n";
	$surface=pg_escape_string($row1->surface);
	$auto=pg_escape_string($row1->auto);

	$langs=explode(" ", $row1->langid);
	$surfaces=explode(" ", $surface);
	$autos=explode(" ", $auto);
	
	foreach ($langs as $langkey=>$lang)
	{
// 		echo $langkey.": ".$lang."\n";
		
		if ($lang=="eng")
		{
// 			echo $langkey."\n";
			
// 			echo $langs[$langkey-1]." + ".$langs[$langkey+1]."\n";
			
			if ($langs[$langkey-1] != 'cym&eng')  // Provided the preceding word is not indeterminate ...
			{
				if ($langs[$langkey+1] != 'cym&eng')  // ... nor the following word either ...
				{
// 					echo $autos[$langkey]."\n";  // ... print the gloss.
					
					$eprev=($langs[$langkey-1]=='eng') ? "yes" : "no";
					$enext=($langs[$langkey+1]=='eng') ? "yes" : "no";
					
					$getpos=preg_match('/\..[^\.]*/', $autos[$langkey], $mypos);
					$pos=substr("$mypos[0]", 1);
					if ($pos=="") {$pos=$autos[$langkey];}
// 					echo $pos."\n";

					$write1=query("insert into insertion_analysis (slotlg, filename, clause_id, utterance_id, word, gloss, pos, eprev, enext, surface, auto, langid, speaker) values ('$row1->slotlg', '$row1->filename', $row1->clause_id, $row1->utterance_id, '$surfaces[$langkey]', '$autos[$langkey]', '$pos', '$eprev', '$enext', '$surface', '$auto', '$row1->langid', '$row1->speaker');");
				}
			}
		}
	}
	
	echo "\n";
	
}

?>
