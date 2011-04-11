<?php

// this script gathers the cognates into a cogloc table, which segment_at_cognate can then use to break each utterance into segments at the cognate.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$cogloc=$filename."_cogloc";

drop_existing_table($cogloc);
//echo $utterances."<br/>";

$sql_fill="create table $cogloc as (select * from $words where langid='cym&eng' or langid='eng+cym' or surface in (select cognate from di_cognates) order by utterance_id, location)";
$result_fill=pg_query($db_handle, $sql_fill);

?>