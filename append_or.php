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

// This script adds residual [or] entries in the $words table to the tidy_auto table..

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql1=query("select distinct surface, langid, auto, substring(auto from '^.[^[]*') as sub from $words where auto~'\\\[or\\\]'");
while ($row_sql1=pg_fetch_object($sql1))
{
	echo $row_sql1->auto."\n";
	
	$sql2=query("select * from tidy_auto where surface='$row_sql1->surface' and langid='$row_sql1->langid' and auto='$row_sql1->auto'");
	if (pg_num_rows($sql2) == 0)
	{
		$sql3=query("insert into tidy_auto (surface, langid, auto, sub, newentry) values ('$row_sql1->surface', '$row_sql1->langid', '$row_sql1->auto', '$row_sql1->sub', 'new')");
	}
}
    
$sql4=query("update tidy_auto set sub=regexp_replace(sub, E'\\\.$', '', 'g') where newentry='new'");

?>