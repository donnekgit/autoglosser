<?php

include("includes/fns.php");
include("/opt/autoglosser/config.php");

//$eslg=array("3", "", "es");
//$enlg=array("2", "en");
//$cylg=array("1", "cy");

$sql="select * from lgtest order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items\n");
while ($row=pg_fetch_object($result))
{
    $surface=$row->surface;
    echo $row->surface."\n";

    if (in_array($row->langid, $eslg))
    {
        echo "Spanish\n\n";
    }
    elseif (in_array($row->langid, $enlg))
    {
        echo "English\n\n";
    }
    elseif (in_array($row->langid, $cylg))
    {
        echo "Welsh\n\n";
    }

}

?>