<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// For speed, the order here has been changed to select the sample first, and then clause-split it.
// To revert, uncomment the later get_sample_clauses, and replace all instances of $filename_sampleclauses with $words in the earlier files (ie not in analyse_clauses).

include("get_sample_clauses.php");

include("mark_cyes.php");

include("adjust_deletes_cy.php");

include("adjust_moves_cyes.php");

include("segment_at_clause_enes.php");

//include("get_sample_clauses.php");

include("analyse_clauses_enes_provisional.php");

?>
