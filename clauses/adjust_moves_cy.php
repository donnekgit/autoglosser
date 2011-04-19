<?php

// This script moves the clause marker in specific cases.

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
	$s0=$row0->surface;
	$a0=$row0->auto;

	$loc[0]=$row0->location;
	$loc[1]=$loc[0]-1;

	$sql1="select * from $words where utterance_id=$utt and location=$loc[1]";
	$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
	while ($row1=pg_fetch_object($result1))
	{
		$s1=$row1->surface;
		$a1=$row1->auto;
		
		// Prepositions before infinitives
		if (preg_match("/^(yn|wedi|am|heb|newydd)$/", $s1) && preg_match("/INFIN/", $a0))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m1' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
		
		if (preg_match("/^(i|o)$/", $s1) && preg_match("/PREP/", $a1) && preg_match("/INFIN/", $a0))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m2' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
		
		// Link words before verbs
		if (preg_match("/^(na|ac?|pan|be|so|os|lle|sut|just|ond|neu|pwy)$/", $s1) && preg_match("/\.V\./", $a0))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m3' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
		
		// Pronominal infinitives
		if (preg_match("/ADJ\.POSS/", $a1) && preg_match("/INFIN/", $a0))
		{
			$sqlm="update $words set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update $words set clause=clause || '+m4' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
	
	}

}

?>