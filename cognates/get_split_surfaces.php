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

// This script gets the utterances which have been split into most clauses from every file.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$nuked=$words."_nuked";

$sql=query("select utterance_id, speaker, surface from $utterances where utterance_id in (select utterance_id from $nuked where clauseno>3 order by utterance_id) and surface !~'@s:eng' and precode !='eng';");
while ($row=pg_fetch_object($sql))
{
	$surface=pg_escape_string($row->surface);

	$sql2=query("select surface from {$filename}_diana where utterance_id=$row->utterance_id order by clause_id;");
	while ($row2=pg_fetch_object($sql2))
	{
		$cl_surface.=pg_escape_string($row2->surface." // ");
	}
	$cl_surface=preg_replace("/\\*/", "", $cl_surface); 
	
	$sql3=query("insert into split_surface (filename, utterance_id, speaker, surface, cl_surface) values ('$filename', $row->utterance_id,  '$row->speaker', '$surface', '$cl_surface');");
	unset($cl_surface);
}

?>