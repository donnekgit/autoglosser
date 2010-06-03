<?php

// If the script is being called standalone instead of as part of the pipeline, generate default names from the filepath given
if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/siarad/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."_cg_applied.txt", "w") or die("Can't create the file");

exec("vislcg3 -g grammar/smallcygrm -I outputs/".$filename."_cg.txt", $cg_output);
foreach ($cg_output as $cg_line)
{
	echo $cg_line."\n";
	fwrite($fp, $cg_line."\n");
}

fclose($fp);

?>