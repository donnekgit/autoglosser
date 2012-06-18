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

echo "*\n*\nImporting $filename into $utterances\n*\n*\n";
include("cgimport.php");

echo "*\n*\nCleaning and wordifying the utterance lines\n*\n*\n";
include("rewrite_utterances.php");

echo "*\n*\nDoing dictionary lookup and generating CG cohorts\n*\n*\n";
include("write_cohorts.php");

echo "*\n*\nApplying the grammar to disambiguate\n*\n*\n";
include("apply_cg.php");
include("apply_traced_cg.php");

echo "*\n*\nWriting disambiguated forms to $cgfinished\n*\n*\n";
include("write_cgfinished.php");

echo "*\n*\nCopying POS tags to $words\n*\n*\n";
include("join_tags.php");

echo "*\n*\nTidying the $words table\n*\n*\n";
include("tidy_or.php");

//echo "*\n*\nTidying Spanish\n*\n*\n";
//include("osfixes.php");

//echo "*\n*\nTidying Welsh\n*\n*\n";
//include("owfixes.php");

echo "*\n*\nWriting a chat file for $filename\n*\n*\n";
include("write_cgautogloss.php");

echo "*\n*\nWriting a TeX file for $filename\n*\n*\n";
include("tex/generate_expex.php");

echo "*\n*\nFix um and uh in $filename\n*\n*\n";
include("fix_um-uh.php");

echo "*\n*\nGenerating a pdf for $filename\n*\n*\n";
exec("pdflatex -interaction=nonstopmode -output-directory=outputs/$filename outputs/$filename/$filename.tex 2>&1");
// -interaction=nonstopmode will prevent halt on error. 
// Alternatively, -interaction=batchmode: nonstopmode will print all usual lines, it just won't stop. batchmode will suppress all but a handful of declarative lines ("this is pdfTeX v3.14...").
// and then output to stdout: 2>&1


?>
