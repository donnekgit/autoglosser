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

include("includes/fns.php");
include("/opt/autoglosser/config.php");

// Generate default names from the filepath given
list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();

echo $chafile."\n";
echo $filename."\n";
echo $utterances."\n";
echo $words."\n";
echo $cgfinished."\n";
echo "Outputs are in outputs/$filename/\n";

echo "*\n*\nWriting a chat file for $filename\n*\n*\n";
include("write_cgautogloss.php");

echo "*\n*\nWriting a TeX file for $filename\n*\n*\n";
include("tex/generate_expex.php");

echo "*\n*\nFix um and uh in $filename\n*\n*\n";
include("fix_um-uh.php");

echo "*\n*\nGenerating a pdf for $filename\n*\n*\n";
exec("pdflatex -interaction=nonstopmode -output-directory=outputs/$filename outputs/$filename/$filename.tex 2>&1");
// add -interaction=nonstopmode to stop halt on error? or perhaps -interaction=batchmode: nonstopmode will print all usual lines, it just won't stop. batchmode will suppress all but a handful of declarative lines ("this is pdfTeX v3.14...").
// and output to stdout? 2>&1

?>
