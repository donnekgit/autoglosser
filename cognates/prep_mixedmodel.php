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

// This script deletes IMs, splits the corpus utterances into clauses, injects triggers, and reformats the data to allow the data to be .

include("includes/fns.php");
include("/opt/autoglosser/config.php");

// Generate default names from the filepath given
list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();

echo $words."\n";

// Set up the table variables.
$words=$words."_nuked";
$cognates=$filename."_diana";
$mixedmodel=$filename."_mixedmodel";

echo $words."\n";
echo $cognates."\n";
echo $mixedmodel."\n";

drop_existing_table($words);

$create_nuked=query("create table $words as select * from {$filename}_cgwords;");

$drop_clause=query("alter table $words drop column clause;");
$drop_clauseno=query("alter table $words drop column clauseno;");
$drop_cognate=query("alter table $words drop column cognate;");
$drop_rei=query("alter table $words drop column rei;");
$drop_spkturn=query("alter table $words drop column spkturn;");
$drop_clspk=query("alter table $words drop column clspk;");

$add_clause=query("alter table $words add column clause character varying(50) default ''");
$add_clauseno=query("alter table $words add column clauseno integer");

include("cognates/extend_cgwords.php");

include("cognates/nuke_ims.php");

include("cognates/mark.php");

include("cognates/adjust_deletes.php");

include("cognates/adjust_moves.php");

include("cognates/segment.php");  // Can write _split.txt.



include("cognates/reinforcers.php");

//include("cognates/insert_triggers.php");  Use if you want to note codeswitches.

include("cognates/write_rei.php");  // Can write _spk.txt.

//include("cognates/write_cognates.php");  // Can write _spkturn.txt.

include("cognates/analyse_clauses.php");  // Writes _clauses.csv.
//include("cognates/analyse_cognates.php");  // Use if you want to notate codeswitches.

exec("cat caroline/outputs/{$filename}_clauses.csv >> caroline/jumbo.csv");  // Add all the clauses to one big file.
*/


?>
