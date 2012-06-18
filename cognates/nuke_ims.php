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

//$words=$words."_nuked";

$sql1=query("select * from $words where surface in (select surface from im_nuke) order by utterance_id, location"); 
while ($row1=pg_fetch_object($sql1))
{
	$sql_nuke=query("delete from $words where utterance_id=$row1->utterance_id and location=$row1->location");
	$sql_shift=query("update $words set location=location-1 where utterance_id=$row1->utterance_id and location>$row1->location");
}

?>