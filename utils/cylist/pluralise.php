<?php

//Copyright 2006 Kevin Donnelly, kevin@dotmon.com

/*
This file is part of Eurfa, a free, high-quality Welsh dictionary.

Eurfa is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

Eurfa is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

A copy of the GNU General Public License is included along with Eurfa
in the file COPYING; if this file is missing, a copy is available at 
http://www.gnu.org/licenses/gpl.txt, or you can write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA.
*/

// This script generates English plurals (written to a new table, plurals) for the items in the Welsh canonical table.

include("../../includes/fns.php");
include("/opt/autoglosser/config.php");

$sql="select * from canonical where sorp!='' and num='s' and pos='n' order by welsh"; //change tablename
$result=pg_query($db_handle, $sql);

while ($row=pg_fetch_object($result))
{
	$pluralised=pluralise(pg_escape_string(trim($row->english)));
	echo $row->welsh." - ".$row->english." / ".$pluralised."\n";
	$sorp=pg_escape_string($row->sorp);
	$clar=pg_escape_string($row->clar);
	$welsh=pg_escape_string($row->welsh);
	
	// You may want to comment out the following query, so that you can see the changes that are 
	// going to be made to the table before you actually implement them.
	$sql1="insert into plurals(welsh, english, clar, sorp, pos, gender, num, tag) values('$sorp', '$pluralised', '$clar', '$welsh', '$row->pos', '$row->gender', 'p', '$row->tag')"; //change tablename
	$result1=pg_query($db_handle, $sql1);
}

?>