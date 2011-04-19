<?php

// This script deletes the clause marker in specific cases.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql0="select * from $words where clause='c' order by utterance_id, location";
$result0=pg_query($db_handle,$sql0) or die("Can't get the items");
while ($row0=pg_fetch_object($result0))
{
	$utt=$row0->utterance_id;
	
	($prev_utt==$utt ? $prev_c=$prev_c  : $prev_c=0);
	($prev_utt==$utt ? $prev_a=$prev_a  : $prev_a='');

	$s0=$row0->surface;
	$a0=$row0->auto;

	$loc[0]=$row0->location;
	$loc[1]=$loc[0]-1;
	
	$span=$loc[0] - $prev_c;

	//echo $utt.",".$loc[0].": ".$loc[1]." - ".$loc[2]."\n";
	//echo  "Previous clause: (".$utt.") ".$prev_c."\n";
	//echo  "Previous auto: (".$utt.") ".$prev_a."\n";
	
	$sql1="select * from $words where utterance_id=$utt and location=$loc[1]";
	$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
	while ($row1=pg_fetch_object($result1))
	{
		$s1=$row1->surface;
		$a1=$row1->auto;
		
		// Prepositions used as tense-helpers
		if (preg_match("/^(yn|wedi|am|heb)$/", $s0) && preg_match("/(be|which_is)\./", $prev_a))
		{
			$d1_da=query("update $words set clause=clause || '+d1' where utterance_id=$utt and location=$loc[0]");
			echo "Deleting $utt,$loc[0]\n";
		}
		
		// Infinitives after modal verbs
		if (preg_match("/INFIN/", $a0) && preg_match("/(be|which_is|be_able|do|like)\./", $prev_a) && $span<4)
		{
			$d2_da=query("update $words set clause=clause || '+d2' where utterance_id=$utt and location=$loc[0]");
			echo "Deleting $utt,$loc[0]\n";
		}
		
		// Infinitives following a noun
		if (preg_match("/\.N\./", $a1) && preg_match("/INFIN/", $a0))
		{
			$d3_da=query("update $words set clause=clause || '+d3' where utterance_id=$utt and location=$loc[0]");
			echo "Deleting $utt,$loc[0]\n";
		}
		
		// Infinitives following the definite article
		if (preg_match("/^yr?$/", $s1) && preg_match("/INFIN/", $a0))
		{
			$d4_da=query("update $words set clause=clause || '+d4' where utterance_id=$utt and location=$loc[0]");
			echo "Deleting $utt,$loc[0]\n";
		}
	
	}

	$prev_utt=$utt;
	$prev_c=$loc[0];
	$prev_a=$a0;

}

?>