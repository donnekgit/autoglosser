<?php

// This script generates a conversation text from the _diana file.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$diana=$filename."_diana";

$sql1=query("select utterance_id from $diana group by utterance_id order by utterance_id;");
while ($row1=pg_fetch_object($sql1))
{
	$sql=query("select surface from  $diana where utterance_id=$row1->utterance_id order by clause_id;");
	while ($row=pg_fetch_object($sql))
	{
		$surface=$row->surface." ";
		$surface=preg_replace("/\\*/", "", $surface);
		echo $surface."\n";
	}
}

?>