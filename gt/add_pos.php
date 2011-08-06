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

// This script adds POS tags based on the English equivalent of the word.

include("includes/fns.php");
include("/opt/autoglosser/config.php");
require_once('googleTranslate.class.php');

$source_table="miami_unk";

$sql="select * from $source_table order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{	
	$sql_en="select * from enlist where surface='$row->enlemma'";
	$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");
	while ($row_en=pg_fetch_object($result_en))
	{
		$sql_g2="update $source_table set pos='$row_en->pos', number='$row_en->number' where surface='$row->surface'";
		echo $row->surface." - ".$row_en->pos."\n";
		$result_g2=pg_query($db_handle,$sql_g2) or die("Can't insert the items");
	}
}
?>