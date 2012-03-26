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

/*
This script gets the count of external and internal codeswitches in the Cypriot files.
*/

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$cyp_count="cyp_count";
$cyp_count="siarad_count";

echo $filename."\n";

$sql_s="select speaker, count(clause_id) from $filename group by speaker";
$result_s=pg_query($db_handle,$sql_s) or die("Can't insert the items");
while ($row_s=pg_fetch_object($result_s))
{
	$speaker=$row_s->speaker;
	$clauses=$row_s->count;

	$sql_e="select count(external) from $filename where external='ext' and speaker='$speaker'";
	$result_e=pg_query($db_handle,$sql_e) or die("Can't insert the items");
	while ($row_e=pg_fetch_object($result_e))
	{
		$ext_cs=$row_e->count;
	}

	$sql_i="select count(internal) from $filename where internal='int' and speaker='$speaker'";
	$result_i=pg_query($db_handle,$sql_i) or die("Can't insert the items");
	while ($row_i=pg_fetch_object($result_i))
	{
		$int_cs=$row_i->count;
	}
	
	$trunc_filename=preg_replace("/_csdata/", "", $filename);

	$sql="insert into $cyp_count (filename, speaker, clauses, external, internal) values ('$trunc_filename', '$speaker', '$clauses', '$ext_cs', '$int_cs')";
	$result=pg_query($db_handle,$sql) or die("Can't insert the items");
}

?>





















