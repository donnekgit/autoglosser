<?php

// This script generates a conversation text from the _clauses jumbo file.
// Give the filename after the invocation, and pipe it into a file if desired:
// php cognates/generate_diana.php stammers4 > cognates/stammers4_diana.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$surface="";

$sql1=query("select utt_no from jumbo_clauses_siarad where file='$filename' group by utt_no order by utt_no;");
while ($row1=pg_fetch_object($sql1))
{
	$sql=query("select surface from  jumbo_clauses_siarad where file='$filename' and utt_no=$row1->utt_no order by cl_in_utt;");
	while ($row=pg_fetch_object($sql))
	{
		$surface=$row->surface." ";
		echo $surface."\n";
	}
}

?>