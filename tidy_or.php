<?php

// This script converts residual [or] entries in the _cgfinished table to a final entry.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql_or="update $words set auto ='yn.PRT' where surface='yn' and auto='stative.STAT[or]in.PREP'";
$result_or=pg_query($db_handle, $sql_or);

?>