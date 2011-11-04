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

header('Content-Type: text/html; charset=utf-8'); 
include("includes/fns.php");
include("/opt/autoglosser/config.php");

$f="sastre5";
$u="25";
$w="4";

include("includes/header.php");

echo "<table>";

$filename=$f;
$utterances=$filename."_cgutterances";

$sql_s="select utterance_id, speaker, surface, dra, eng from $utterances where utterance_id between $u-$w and $u+$w order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{	
    echo "<tr><td><em>".$row_s->utterance_id."</em></td><td>".$row_s->speaker."</td><td>".$row_s->surface."</td></tr>";
	echo "<tr><td>&nbsp;</td><td>&nbsp;</td><td><em>".$row_s->dra."</em></td></tr>";
	
	$lookup=pg_escape_string($lookup);
	//$sql2="update $utterances set dra='$lookup' where utterance_id=$row_s->utterance_id";
	//$result2=pg_query($db_handle,$sql2) or die("Can't insert the items");

	unset($surface, $lookup);
}

echo "</table>";

include("includes/sidebar.php");
include("includes/footer.php");

?>
