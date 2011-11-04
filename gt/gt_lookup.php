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

// This script looks up words against Google Translate.

include("includes/fns.php");
include("/opt/autoglosser/config.php");
require_once('googleTranslate.class.php');

$gt = new GoogleTranslateWrapper();
$gt->setReferrer("http://kevindonnelly.org.uk");
$apiKey = "ABQIAAAAqzssasDT1Uj1D4puCMQwVRQXhoz1HJX1na5odYtLRRsz6bu7cRRXwnMnCXgnfiGL-o6oc3HZTd9GSQ";

$source_table="patagonia_spa_unknowns_uniq";

$sql="select * from $source_table order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$lookup=$gt->translate($row->surface, "en", "es");
	echo $row->surface." - ". $lookup."\n";
	if ($row->surface != $lookup)  // so that the surface word (which is the default return) doesn't get added as the lookup
	{
		$lookup=pg_escape_string(strtolower(trim($lookup)));
		$sql_g="update $source_table set enlemma='$lookup', lemma=surface where surface='$row->surface'";
		$result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");
	}
}
?>