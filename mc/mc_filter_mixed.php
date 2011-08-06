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

// This file creates a new table of mixed-language entries from the subset table.  The relevant subset has to be specified as the first argument, eg php mc/mc_filter_mixed.php patagonia.

$subset=$_SERVER['argv'][1];
$mctable="mc_k_".$subset;
//$mcout="mc_n_adj_".$corpus;
$mcout="mc_mixed_".$subset;

include("includes/fns.php");
include("/opt/autoglosser/config.php");
    
drop_existing_table($mcout);

//$sql0=query("create table $mcout as select * from $mctable where langid1!=langid2 and langid1!~'&' and langid2!~'&' and auto1!~'ADJ\\\.POSS' and auto2!~'ADJ\\\.POSS' and auto1!~'ADJ\\\.DEM' and auto2!~'ADJ\\\.DEM' order by surface1, surface2");
//$sql0=query("create table $mcout as select * from mc_siarad where langid1='eng' and langid2='eng' and auto1!~'ADJ\\\.POSS' and auto2!~'ADJ\\\.POSS' and auto1!~'ADJ\\\.DEM' and auto2!~'ADJ\\\.DEM' order by surface1, surface2");
//$sql=query("create table $mcout as select * from $mctable where langid1!=langid2 order by surface1, surface2");
$sql=query("create table $mcout as select * from $mctable where langid1!=langid2 or langid1!=langid3 or langid2!=langid3 order by surface1, surface2, surface3");

?>