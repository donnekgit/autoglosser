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

// This script takes all the entries in cgwords showing a manual fix, and aggregates them into a prepub table, whose contents can then be applied to any regnerations of the cgwords file.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}
$prepub=$filename."_prepub";

// Uncomment when this is run initially, so that the table can be created.
//echo "*\n*\nCreating the $prepub table\n*\n*\n";
//include("create_prepub.php");

$sql=query("insert into $prepub (utterance_id, location, surface, auto, fix, speaker, langid, filename) select utterance_id, location, surface, auto, fix, speaker, langid, filename from forum_cgwords where fix!=''");

// Either add the additional records, and delete, or else add only where not already present.

?>
