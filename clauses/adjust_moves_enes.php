<?php

// This script moves the clause marker in specific cases.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql0="select * from ".$filename."_sampleclauses where clause='c' order by utterance_id, location";
$result0=pg_query($db_handle,$sql0) or die("Can't get the items");
while ($row0=pg_fetch_object($result0))
{
	$utt=$row0->utterance_id;
	$s0=$row0->surface; // current surface
	$a0=$row0->auto; // current auto

	$loc[0]=$row0->location; // current location
	$loc[1]=$loc[0]-1; // previous location

	$sql1="select * from ".$filename."_sampleclauses where utterance_id=$utt and location=$loc[1]";
	$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
	while ($row1=pg_fetch_object($result1))
	{
		$s1=$row1->surface; // previous surface
		$a1=$row1->auto; // previous auto
		
		// Link words before que in Spanish
		if (preg_match("/^(hasta|lo|la|las|tengo|tiene|tienes|tienen)$/", $s1) && preg_match("/que/", $s0))
		{
			$sqlm="update ".$filename."_sampleclauses set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update ".$filename."_sampleclauses set clause=clause || '+m1' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
		
		// Link words in English
		if (preg_match("/(if|and|what|when|why|where|since|because)/", $s1) && preg_match("/PRON.SUB/", $a0))
		{
			$sqlm="update ".$filename."_sampleclauses set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update ".$filename."_sampleclauses set clause=clause || '+m2' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
		
		/*
		// Subject pronoun after a verb in English // omit for the present
		if (preg_match("/did/", $s1) && preg_match("/PRON.SUB/", $a0))
		{
			$sqlm="update ".$filename."_sampleclauses set clause='c' where utterance_id=$utt and location=$loc[1]";
			$resultm=pg_query($db_handle,$sqlm) or die("Can't get the items");

			$sqld="update ".$filename."_sampleclauses set clause=clause || '+m3' where utterance_id=$utt and location=$loc[0]";
			$resultd=pg_query($db_handle,$sqld) or die("Can't get the items");
			
			echo "Moving $utt,$loc[0] to $utt,$loc[1]\n";
		}
		*/
	}

}

?>