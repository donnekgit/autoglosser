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

// This file writes out the $words table in a text file which can then be manually edited to reflect clause breaks.  This is part of the testing process to ensure that the automated analysis works as accurately as possible.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("cognates/output/$filename.txt", "w") or die("Can't create the file");

$utts=query("select distinct utterance_id from $words order by utterance_id");
while ($utt=pg_fetch_object($utts))
{
	$surfs=query("select * from $words where utterance_id=$utt->utterance_id and langid!='999' order by location");
	while ($surf=pg_fetch_object($surfs))
	{
		$surface.=$surf->surface." ";
		$speaker=$surf->speaker;
	}
	
	//$wsurface=$speaker.": ".$surface."\n";
	$wsurface=$surface."\n";
	fwrite($fp, $wsurface);
	
	unset($surface, $speaker);
}

fclose($fp);

?>
