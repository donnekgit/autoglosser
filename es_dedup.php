<?php

include("includes/fns.php");
include("/opt/autoglosser/config.php");
/*
$sql="select * from eslist where surface ='adecuadas'";
$result=pg_query($db_handle,$sql) or die("Can't get the items\n");
while ($row=pg_fetch_object($result))
{
    echo $row->surface." {".$row->id."} (< ".$row->lemma.") [".$row->enlemma."]: ".$row->mypos.", ".$row->gender.", ".$row->number.", ".$row->tense."\n";
    $sql2="select * from eslist where surface='$row->surface' and lemma='$row->lemma' and enlemma='$row->enlemma' and mypos='$row->mypos' and gender='$row->gender' and  number='$row->number' and tense='$row->tense' and id != $row->id";
    $result2=pg_query($db_handle,$sql2) or die("Can't get the items\n");
    while ($row2=pg_fetch_object($result2))
    {
        echo "To be deleted: ".$row2->surface." {".$row2->id."} (< ".$row2->lemma.") [".$row2->enlemma."]: ".$row2->mypos.", ".$row2->gender.", ".$row2->number.", ".$row2->tense."\n";
    }

}
*/

$sql="select * from eslist where surface ='candidatas'";
$result=pg_query($db_handle,$sql) or die("Can't get the items\n");
while ($row=pg_fetch_object($result))
{
    echo $row->surface." {".$row->id."}\n";
    if ($row->tense=="")
{
    $sql2="select * from eslist where surface='$row->surface' and mypos='$row->mypos' and id != $row->id";
}
else
{
    $sql2="select * from eslist where surface='$row->surface' and mypos='$row->mypos' and tense='$row->tense' and id != $row->id";
}
    $result2=pg_query($db_handle,$sql2) or die("Can't get the items\n");
    while ($row2=pg_fetch_object($result2))
    {
        echo "To be deleted: ".$row2->surface." {".$row2->id."}\n";
    }

}


?>















