<?php

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

require_once('googleTranslate.class.php');
$gt = new GoogleTranslateWrapper();
$gt->setReferrer("http://kevindonnelly.org.uk");
$apiKey = "ABQIAAAAqzssasDT1Uj1D4puCMQwVRQXhoz1HJX1na5odYtLRRsz6bu7cRRXwnMnCXgnfiGL-o6oc3HZTd9GSQ";

$fp = fopen("outputs/$filename/$filename.gt", "w") or die("Can't create the file");

$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{	
    $sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
	$result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
	while ($row_w=pg_fetch_object($result_w))
	{
		$surface.=$row_w->surface." ";
		$lookup=$gt->translate($surface, "en", "es");
	}
	
	echo $surface."\n";
	fwrite($fp, $surface."\n");
	
	echo $lookup."\n\n";
	fwrite($fp, $lookup."\n\n");

	unset($surface, $lookup);

}

fclose($fp);

?>