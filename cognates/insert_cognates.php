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

add_column_if_not_exist($words, "cognate");

$sql_clear=query("update $words  set cognate=''");  // Remove previous cognate entries

$sql_fill=query("update $words set cognate='t1' where surface in (select cognate from di_cognates) and langid!='cym'");

$sql_fill=query("update $words set cognate='t2' where surface in (select surface from di_n) and langid!='cym'");

// Omit the langid!='cym' clause from the -io verbs line

?>