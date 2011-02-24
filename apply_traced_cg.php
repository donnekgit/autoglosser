<?php

//Output table: none
//Output file: $filename_cg_applied.txt

// If the script is being called standalone instead of as part of the pipeline, generate default names from the filepath given
if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_cg_traced.txt", "w") or die("Can't create the file");

// To run a trace, use this line instead:
exec("vislcg3 -g grammar/".$gram_file."_grammar  --trace -I outputs/".$filename."/".$filename."_cg.txt", $cg_output);
//exec("vislcg3 -g grammar/".$gram_file."_grammar -I outputs/".$filename."/".$filename."_cg.txt", $cg_output);
foreach ($cg_output as $cg_line)
{
	echo $cg_line."\n";
	fwrite($fp, $cg_line."\n");
}

fclose($fp);

?>