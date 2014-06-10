<?php

$target="inputs/cig1/beta";

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$fp = fopen("cig1_filelist.php", "w") or die("Can't create the file");

$files=scandir($target);
natsort($files);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		$fileref="<a href=\"./$filename.cha\">$filename</a> - \n";
		echo $fileref;
		fwrite($fp, $fileref);
	}
}

fclose($fp);

?>