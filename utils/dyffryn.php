<?php

include("/opt/autoglosser/config.php");
include("includes/fns.php");


$text="i lawr yn y dyffryn.";
echo $text."\n";
//$text=preg_replace("/([a-z])\./", "$1 .", $text);
$text=fix_transcription($text);
echo $text."\n";



?>
