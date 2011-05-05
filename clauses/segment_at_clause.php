<?php

// This script uses the clause markers to segment the utterances into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql1="select utterance_id from ".$filename."_sampleclauses group by utterance_id order by utterance_id";
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$sql2="select * from ".$filename."_sampleclauses where utterance_id=$row1->utterance_id and clause='c' order by location";
	$result2=pg_query($db_handle,$sql2) or die("Can't get the items");
	while ($row2=pg_fetch_object($result2))
	{
		$locarray[]=$row2->location;
	}
	echo $row1->utterance_id."\n";
	$locarray[0]=0;
	//print_r($locarray);

	$j=1;
	for ($i = 0; $i = count($locarray); $i++)
	{
		if(empty($locarray[1]))  // Handle end of the utterance.
		{
			$myand="";
		}
		else
		{
			$myand=" and location<$locarray[1] ";
		}

		$sql4="select * from ".$filename."_sampleclauses where utterance_id=$row1->utterance_id and location>=$locarray[0] $myand order by location";
		$result4=pg_query($db_handle,$sql4) or die("Can't get the items");
		while ($row4=pg_fetch_object($result4))
		{
			$clause.=$row4->surface." ";
			$sqlc=query("update ".$filename."_sampleclauses set clauseno='$j' where utterance_id=$row1->utterance_id and location>=$locarray[0]");
		}
		echo $j.": ".$clause."\n";
		unset($clause);
		$j++;

		array_shift($locarray);  // Remove the first clause marker in the array so that we can process the next one
		$locarray=array_values($locarray);  // Re-index the array to start at 0 again
	}

	echo "\n";

	unset($locarray);
}

?>