<?php

include("/opt/autoglosser/config.php");

// Get surface line, with full markings
$sql3="select * from sastre1_cgutterances order by utterance_id";
$result3=pg_query($db_handle,$sql3) or die("Can't get the items");
while ($row3=pg_fetch_object($result3))
{
	echo $row3->utterance_id.": ".$row3->surface."\n";
	
	$row3->surface=pg_escape_string($row3->surface);
	$sqlutt="insert into sastre1_default(utterance_id, surface) values($row3->utterance_id, '$row3->surface')";
	$resultutt=pg_query($db_handle,$sqlutt) or die("Can't get the items");

	$sql2="select * from sastre1_cgwords where utterance_id=$row3->utterance_id order by location";
	$result2=pg_query($db_handle,$sql2) or die("Can't get the items");
	while ($row2=pg_fetch_object($result2))
	{	
		// Surface line without markings
		$text.=$row2->surface." ";
		if ($row2->langid=='999')
		{
			$slot='';
		}
		else
		{
			$slot=$row2->langid;
		}
		$slotstring.=$slot;
	}
		
	echo $row3->utterance_id.": ".$text."\n";
	echo $row3->utterance_id.": ".$slotstring."\n";
	
	$text=pg_escape_string($text);
	$sqlslot="update sastre1_default set cleaned='$text', lgprofile='$slotstring' where utterance_id=$row3->utterance_id";
	$resultslot=pg_query($db_handle,$sqlslot) or die("Can't get the items");
	
	unset($text, $slotstring);
	echo "\n\n";
}

?>
