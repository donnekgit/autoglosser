<?php

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