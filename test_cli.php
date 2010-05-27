<?php

include("includes/fns.php");
include("/opt/siarad/config.php");

$mytable="stammers4_cgfinished";

$myarg=$_SERVER['argv'][1];

if (isset($myarg))
{
	echo "The arg is ".$myarg." ...\n";
}
else
{
	echo "Using default ...\n";
} 






?>