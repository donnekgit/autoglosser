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

/*
This script takes the Freedict eng field and creates a single entry for use in the enlemma field of eslist.  The other entries can be retained in an "other" field
*/

include("../includes/fns.php");
include("/opt/autoglosser/config.php");

$sql="select * from freedict_spa_eng order by spa";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
    $cut=preg_split('/(,)/u', $row->eng, 2);
    $enlemma=pg_escape_string($cut[0]);
    $sql2="update freedict_spa_eng set enlemma='$enlemma' where id=$row->id";
    $result2=pg_query($db_handle,$sql2) or die("Can't do the insert");
}

?>