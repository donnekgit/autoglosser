<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/ 

if (!isset($chain))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
}

$filename="histcorpus/groniosaw_split.txt";
$utterances="groniosaw_cgutterances";
$words="groniosaw_cgwords";

$fp = fopen("outputs/groniosaw/groniosaw_cg_applied.txt", "w") or die("Can't create the file");

// To run a trace, use this line instead:
//exec("vislcg3 -g grammar/".$gram_file."_grammar  --trace -I outputs/".$filename."/".$filename."_cg.txt", $cg_output);
exec("vislcg3 -g grammar/".$gram_file."_grammar -I outputs/groniosaw/groniosaw_cg.txt", $cg_output);
foreach ($cg_output as $cg_line)
{
	echo $cg_line."\n";
	fwrite($fp, $cg_line."\n");
}

fclose($fp);

?>
