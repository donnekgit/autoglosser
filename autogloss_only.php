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

?>
