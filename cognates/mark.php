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

// This script marks verbs in an utterance with a clause marker, which can then be used to segment the utterance into clauses.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$words=$words."_nuked";
//echo $words."\n";

$sql_clear=query("update $words set clause=''");  // Remove previous clause-splitting entries

// Put a clause-marker at the beginning of every utterance // Deprecated
//$sql_mark=query("update $words set clause='c' where location=1");  

//$sql_mark=query("update $words set clause='c' where langid='spa' and surface~'^(cuando|después|donde|mientras|pero|porque|que|qué|quién|según|si|sino)$'");  // Put a clause-marker against conjunctions in Spanish

// Put a clause-marker at the beginning of every Spanish (others?) utterance if the first word is a verb.
$sql_mark=query("update $words set clause='c' where langid='spa' and location=1 and auto~'\\\.V\\\.'");

// Put a clause-marker against verb entries in Spanish provided they are not infinitives or participles.
$sql_mark=query("update $words set clause='c' where langid='spa' and auto~'\\\.V\\\.(?!(INFIN|PRESPART|PASTPART))'");

// Put a clause-marker against verb entries in English provided they are not infinitives or participles.
$sql_mark=query("update $words set clause='c' where langid='eng' and auto~'\\\.V\\\.(?!(INFIN|PRESPART|PASTPART))'");

// Put a clause-marker against subject pronouns in English.
//$sql_mark=query("update $words set clause='c' where langid='eng' and auto~'PRON.SUB'");

// Put a clause-marker against auxiliary elisions in English.
$sql_mark=query("update $words set clause='c' where langid='eng' and surface~'^(aren\'t|doesn\'t|don\'t|s?he\'d|s?he\'s|I\'d|I\'m|I\'ve|isn\'t|that\'s|they\'d|they\'re|they\'ve|we\'d|we\'re|we\'ve|won\'t|would\'ve|wouldn\'t|you\'d|you\'re|you\'ve)$'");

// Put a clause-marker against verb entries in Welsh provided they are not infinitives.
$sql_mark=query("update $words set clause='c' where langid='cym' and auto~'\\\.V\\\.(?!INFIN)'");

// Put a clause-marker against verb entries in Welsh, including infinitives.
//$sql_mark=query("update $words set clause='c' where langid='cym' and auto~'\\\.V\\\.?'");

// Put a clause-marker against "bod" in Welsh, which forms a subordinate clause.
$sql_mark=query("update $words set clause='c' where langid='cym' and surface='bod'");

//$sql_mark=query("update $words set clause='c' where langid='cym' and auto='and.CONJ'");
//$sql_mark=query("update $words set clause='c' where langid='cym' and auto='or.CONJ'");
$sql_mark=query("update $words set clause='c' where langid='cym' and gls='TAG'");
$sql_mark=query("update $words set clause='c' where langid='cym' and auto='you_know.IM'");
$sql_mark=query("update $words set clause='c' where langid='cym' and auto='yes.ADV.PAST'");  
$sql_mark=query("update $words set clause='c' where langid='cym' and auto='that_is.ADV'");  // dyna
$sql_mark=query("update $words set clause='c' where langid='cym' and auto='or.CONJ' and gls='then'");



?>
