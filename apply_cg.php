<?php

$fp = fopen("outputs/stammers4_cg_applied.txt", "w") or die("Can't create the file");

exec("vislcg3 -g grammar/smallcygrm -I outputs/stammers4_cg.txt", $cg_output);
foreach ($cg_output as $cg_line)
{
	echo $cg_line."\n";
	fwrite($fp, $cg_line."\n");
}

fclose($fp);

?>