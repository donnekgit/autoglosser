<?php

/*
if (isset($filename))
{
	echo "passed in\n";
}
else
{
	$filename=get_filename();
	echo "given\n";

}


if (empty($filename))
{
	include("includes/fns.php");
	$filename=get_filename();
	echo $filename."\n";
}
*/
if (empty($filename))
{
	check_filename($filename);
}

echo "The filename is $filename.\n";

?>
