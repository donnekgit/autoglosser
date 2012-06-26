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

// This script removes items tagged IM from the table and renumbers accordingly.  The list of IMs to be removed is in the im_nuke table.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

/* For testing:
//$words=$words."_nuked";
//drop_existing_table($filename."_cgwords_nuked");
//$create_nuked=query("create table $words as select * from {$filename}_cgwords;");
*/

// The following works fine for utterances which contain only one IM.
/*
$sql1=query("select * from $words where surface in (select surface from im_nuke) order by utterance_id, location;"); 
while ($row1=pg_fetch_object($sql1))
{
	$sql_nuke=query("delete from $words where utterance_id=$row1->utterance_id and location=$row1->location;");
	$sql_shift=query("update $words set location=location-1 where utterance_id=$row1->utterance_id and location>$row1->location;");
}
*/

// But around 5% of the utterances in a test file (stammers4) contain more than one IM.  With these, the above code will delete the wrong items after the first deletion, and wrongly renumber the remainder.

// To handle multi-IM utterances, we need to keep track of how many there are, and relate the update queries to the sequence number of the IM.

// However, even then there is a problem.  Running delete and update queries on the location field inside a loop should work, but doesn't - the revamped location numbers get jumbled.  To deal with this, we set up an additional field to mark the IMs.  Then we create another field (p0), write the new location numbers into that, and then copy them into the location field.  After that, both the IMs and the nuke and  p0 fields can be deleted.

// Mark all the IMs.
$add_nuke=query("alter table $words add column nuke character varying(10) default ''");
$sql_im=query("update $words set nuke='yes' where surface in (select surface from im_nuke);"); 

// Add a working field,
$add_0=query("alter table $words add column p0 integer");

// Collect the utterances containing the IMs we want to nuke.
$sql1=query("select utterance_id from $words where nuke='yes' group by utterance_id order by utterance_id;"); 
while ($row1=pg_fetch_object($sql1))
{
	echo "\n".$row1->utterance_id."\n";
	
	// Collect the details for each utterance.
	$sql2=query("select * from $words where utterance_id=$row1->utterance_id and nuke='yes' order by utterance_id, location;");
	while ($row2=pg_fetch_object($sql2))
	{
		$utt=$row2->utterance_id;
		$loca=$row2->location;
		echo $row2->surface." - ".$loca."\n";
		
		// Store the locations in an array - the key of this will serve as the sequence number.
		$im_locs[]=$loca;
	}
	
	foreach ($im_locs as $place=>$im_loc)
	{
		$offset=$place+1;  // The key starts from 0, so add 1 to make it start from 1.
		echo $im_loc.": ".$place."\n";

		// Mark the IMs to be deleted.
		$del_p=query("update $words set p0=0 where utterance_id=$utt and location=$im_loc;");

		// Shift the location numbers accordingly.  The desired location is the current location minus the sequence number, for all locations above the location of the IM.
		$upd_p=query("update $words set p0=location-$offset where utterance_id=$utt and location>$im_loc;");
	}

	unset($im_locs, $im_loc, $offset);
}

// Update the location column only where there is an entry in the p0 column, otherwise the locations will be zapped in utterances which did not have an IM.
$sql_pu=query("update $words set location=p0 where p0 is not null;");
$sql_pd=query("delete from $words where p0=0;");  // Or, where nuke='yes'

// Drop the added columns.
$drop_n=query("alter table $words drop column nuke");
$drop_0=query("alter table $words drop column p0");

?>