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

// If the script is being called standalone instead of as part of the pipeline, generate default names from the filepath given
if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/$filename/$filename.apertium", "w") or die("Can't create the file");

$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{	
    $sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
	$result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
	while ($row_w=pg_fetch_object($result_w))
	{
		$surface.=$row_w->surface." ";
	}
	
	echo $surface."\n";
	fwrite($fp, $surface."\n");
	
	$lookup=exec("echo \"$surface\"  | apertium es-en");
	echo $lookup."\n\n";
	fwrite($fp, $lookup."\n\n");
	
	$lookup=pg_escape_string($lookup);
	$sql2="update $utterances set dra='$lookup' where utterance_id=$row_s->utterance_id";
	$result2=pg_query($db_handle,$sql2) or die("Can't insert the items");

	unset($surface, $lookup);
}

fclose($fp);

?>
