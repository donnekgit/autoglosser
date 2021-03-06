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

// This script inserts cognates from the various lists into new fields in the words table.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$words=$words."_nuked";

//add_column_if_not_exist($words, "cognate");

$sql_clear=query("update $words  set cognate=''");  // Remove previous cognate entries


$sql_fill=query("update $words set cognate='cog' where surface in (select cognate from di_cognates) and langid!='cym'");
// For langid!='cym', see email of 8 June 2011 - it prevents "fan" and "pan" being interpreted as English when they are in fact Welsh

// For all subsequent injections, specify that the cognate field must be empty, to prevent later wordsets over-writing earlier ones.

$sql_fill=query("update $words set cognate='n' where surface in (select surface from di_n) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='n_mut' where surface in (select surface from di_n_mut) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='n_pl' where surface in (select surface from di_n_pl) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='n_pl_mut' where surface in (select surface from di_n_pl_mut) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='adj' where surface in (select surface from di_adj) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='adj_mut' where surface in (select surface from di_adj_mut) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='adv' where surface in (select surface from di_adv) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='ex' where surface in (select surface from di_ex) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='name' where surface in (select surface from di_names) and langid!='cym' and cognate=''");

$sql_fill=query("update $words set cognate='vb' where surface in (select surface from di_verbs) and cognate=''");

$sql_fill=query("update $words set cognate='vb_io' where surface in (select surface from di_ioverbs) and cognate=''");
// Omit the langid!='cym' clause from the -io verbs line (because they are already marked cym)

?>