<?php

// This script fetches instances of codeswitching from the combined _mixedmodel and _diana files.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// $table="jumbo_margaret_siarad";
$table="jumbo_cp_analysed2";

$sql=query("select filename, speaker, count(speaker) from $table group by speaker, filename order by speaker;");
while ($row=pg_fetch_object($sql))
{
	$filename=$row->filename;
	$speaker=$row->speaker;
	$total=$row->count;

	echo $filename.",".$speaker.",";
	
	// Total clauses (not counting repetitions because of multiple triggers).
// 	$sql6=query("select count(clause_id)from $table where speaker='$speaker';");
// 	while ($row6=pg_fetch_object($sql6))
// 	{
// 		$total=$row6->count;
// 	}
	
	// External codeswitches based on the verb (formerly for _mixedmodel, but now backported to _diana)
	$sql3=query("select count(ext_cs) from $table where ext_cs='yes'  and filename='$filename' and speaker='$speaker';");
	while ($row3=pg_fetch_object($sql3))
	{
		echo $row3->count.",";
		//$ext_cs_percent=round($row3->count/$total*100);
		//echo $ext_cs_percent.",";
	}
	
	// Internal codeswitches (formerly for _mixedmodel, but now backported to _diana)
	$sql4=query("select count(int_cs) from $table where int_cs='yes'  and filename='$filename' and speaker='$speaker';");
	while ($row4=pg_fetch_object($sql4))
	{
		echo $row4->count.",";
		//$int_cs_percent=round($row4->count/$total*100);
		//echo $int_cs_percent.",";
	}
	
// 	// External codeswitches based on the word-language
// 	$sql2=query("select count(external) from $table where external~'^SN?T$' and filename='$filename' and speaker='$speaker';");
// 	while ($row2=pg_fetch_object($sql2))
// 	{
// 		echo $row2->count.",";
// 		$external_percent=round($row2->count/$total*100);
// 		echo $external_percent.",";
// 	}
// 	
// 	// Internal codeswitches based on the word-language (largely similar to int_cs above, but the difference relates to how many times a clause is recounted because of multiple triggers.
// 	$sql5=query("select count(internal) from $table where internal~'^SN?T$' and filename='$filename' and speaker='$speaker';");
// 	while ($row5=pg_fetch_object($sql5))
// 	{
// 		echo $row5->count.",";
// 		$internal_percent=round($row5->count/$total*100);
// 		echo $internal_percent.",";
// 	}
	
	echo $total."\n";
}

?>