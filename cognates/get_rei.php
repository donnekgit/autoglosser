<?php

// This script counts all non-punctuation ignores (defined in reinforcers.php) in the _cgwords files.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$sql1=query("select filename from jumbo_margaret_siarad group by filename order by filename;");
while ($row1=pg_fetch_object($sql1))
{
	$words=$row1->filename."_cgwords";

	$sql=query("select count(count) from (select count(rei) from $words where rei='ignore' and langid!='999' group by utterance_id) as foo;");
	while ($row=pg_fetch_object($sql))
	{
		$ignores=$row->count;

		echo $row1->filename.", ".$ignores."\n";
	}
}

?>