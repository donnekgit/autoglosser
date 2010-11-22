<?php

include("../includes/fns.php");
include("/opt/autoglosser/config.php");
require_once('googleTranslate.class.php');

$gt = new GoogleTranslateWrapper();
$gt->setReferrer("http://kevindonnelly.org.uk");
$apiKey = "ABQIAAAAqzssasDT1Uj1D4puCMQwVRQXhoz1HJX1na5odYtLRRsz6bu7cRRXwnMnCXgnfiGL-o6oc3HZTd9GSQ";

$sql="select * from gt order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$lookup=$gt->translate($row->surface, "en", "es");
	$lookup=pg_escape_string(trim($lookup));
	echo $row->surface." - ". $lookup."\n";
	if ($row->surface != $lookup)
	{
		$sql_g="update gt set lookup='$lookup' where surface='$row->surface'";
		$result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");
	}
}

?>