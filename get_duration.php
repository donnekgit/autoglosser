<?php

function get_duration($text)
{
	//$text=preg_replace("/^.[^\d]*/", "", $text);
	$text=preg_replace("/%.*_/U", "", $text);

	return $text;
}

$eg1="11513_12784";
$eg2="%snd:\"Stammers4\"_8879_15729";

echo get_duration($eg1)."\n";
echo get_duration($eg2)."\n";

?>
