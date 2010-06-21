<?php

/*
Copyright Kevin Donnelly 2010.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
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
/*
echo "*\n*\nDoing dictionary lookup and generating CG cohorts\n*\n*\n";
include("write_cohorts.php");

echo "*\n*\nApplying the grammar to disambiguate\n*\n*\n";
include("apply_cg.php");

echo "*\n*\nWriting disambiguated forms to $cgfinished\n*\n*\n";
include("write_cgfinished.php");

echo "*\n*\nWriting a pseudo-chat file\n*\n*\n";
include("write_cgautogloss.php");
*/

?>
