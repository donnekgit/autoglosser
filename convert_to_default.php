<?php

include("/opt/autoglosser/config.php");

$fp = fopen("outputs/sastre1/sastre1_converted.txt", "w") or die("Can't create the file");

$sql1="select utterance_id, lgprofile from sastre1_default where lgprofile !~'(0|3)' and lgprofile != ''";
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$profiles[]=$row1->utterance_id;
}

//print_r($profiles);

$sql3="select * from sastre1_cgutterances order by utterance_id";
$result3=pg_query($db_handle,$sql3) or die("Can't get the items");
while ($row3=pg_fetch_object($result3))
{
	$surface=$row3->surface;
	if (in_array("$row3->utterance_id", $profiles))
	{
		$surface="[- eng] ".$surface;
		$surface=preg_replace("/@2/", "", $surface);
	}
	else
	{
		$surface=preg_replace("/@3/", "", $surface);
		$surface=preg_replace("/@2/", "@s", $surface);
		$surface=preg_replace("/@0/", "@s:spa&eng", $surface);
	}

	$speech="*".$row3->speaker.":	".$surface." %snd:\"".$row3->filename."\"_".$row3->durbegin."_".$row3->durend."\n";
	fwrite($fp, $speech);

	echo $row3->utterance_id.": ".$surface."\n";
	$surface=pg_escape_string($surface);
	$sqlnew="insert into sastre1_converted(utterance_id, surface, speaker) values($row3->utterance_id, '$surface', '$row3->speaker')";
	$resultnew=pg_query($db_handle,$sqlnew) or die("Can't get the items");
}

fclose($fp);

?>