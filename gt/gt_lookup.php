<?php

include("../includes/fns.php");
include("/opt/autoglosser/config.php");
require_once('googleTranslate.class.php');

$gt = new GoogleTranslateWrapper();
$gt->setReferrer("http://kevindonnelly.org.uk");
$apiKey = "ABQIAAAAqzssasDT1Uj1D4puCMQwVRQXhoz1HJX1na5odYtLRRsz6bu7cRRXwnMnCXgnfiGL-o6oc3HZTd9GSQ";

$sql="select * from sastre1_eswords order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$lookup=$gt->translate($row->surface, "en", "es");
	echo $row->surface." - ". $lookup."\n";
	if ($row->surface != $lookup)  // so that the surface word (which is the default return) doesn't get added as the lookup
	{
		$lookup=pg_escape_string(strtolower(trim($lookup)));
		$sql_g="update sastre1_eswords set enlemma='$lookup', lemma=surface where surface='$row->surface'";
		$result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");
	}

	$sql_en="select * from enlist where surface='$row->enlemma'";
	$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");
	while ($row_en=pg_fetch_object($result_en))
	{
		$sql_g2="update sastre1_eswords set pos='$row_en->pos', number='$row_en->number' where surface='$row->surface'";
		$result_g2=pg_query($db_handle,$sql_g2) or die("Can't insert the items");
	}

}
?>