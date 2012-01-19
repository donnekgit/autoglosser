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

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}
$prepub=$filename."_prepub";

$sql1=query("select * from $prepub order by filename, utterance_id, location");
while ($row1=pg_fetch_object($sql1))
{
	$fix=pg_escape_string($row1->fix);
	$sql=query("update $words set auto='$fix', fix='$fix' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location and surface='$row1->surface'");
	
	echo $row1->filename." (".$row1->utterance_id.", ".$row1->location."): ".$row1->surface."\n";  // Give some feedback.
}

// Either add the additional records, and delete, or else add only where not already present.

?>
