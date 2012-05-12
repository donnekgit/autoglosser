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

// This script converts residual [or] entries in the _cgwords table to a final entry.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Select all the [or]s from the words table.
$ors=query("select distinct surface, langid, auto from $words where auto~'\\\[or\\\]'");
while ($row_ors=pg_fetch_object($ors))
{
	// If the [or] is listed in the tidy_auto table ...
	$tidy_or=query("select * from tidy_auto where surface='$row_ors->surface' and langid='$row_ors->langid' and auto='$row_ors->auto'");
	while ($row_tidy_or=pg_fetch_object($tidy_or))
	{
		//echo $row_ors->auto."\n";
		//echo $row_tidy_or->sub."\n\n";
		
		// ... replace the current auto [or] with the simplified sub from the tidy_auto table, and mark it with an asterisk for debugging.
		$tidy_auto=query("update $words set auto='$row_tidy_or->sub' || '*' where surface='$row_ors->surface' and langid='$row_ors->langid' and auto='$row_ors->auto'");
	}
}

?>