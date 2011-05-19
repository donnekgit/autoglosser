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

/*
This script is a suggested way of segmenting clitic pronouns from a verbform, tagging them all separately, and combining them to give a segmented and POS-tagged analysis of the original target word.  You need to insert your own lookup of the verbform - in the Bangor Autoglosser, for which these functions were developed, I use an ordinary SQL lookup in PHP to select the appropriate verbform+POS-tags from my refactored version of the Apertium Spanish dictionary.  This file can be run as: php clitictest.php (assuming you have the php_cli package installed), and will output an analysis of the sample verbform "abandónateles".
*/

function clitics($text)
// Segment the clitic pronouns from the verbform.
{
	$text=preg_replace("/l(a|e|o)(s?)$/u", "#l$1$2", $text);
	$text=preg_replace("/(me|te|se|nos)$/u", "#$1", $text);
	$text=preg_replace("/(?<!(l|n))os$/u", "#os", $text);
	$text=preg_replace("/(me|te|se|nos|os)(?=#l(a|e|o)s?)/u", "@$1", $text);
	$text=preg_replace("/(te|se|os)(?=#(me|nos))/u", "@$1", $text);	
	$text=preg_replace("/(se)(?=#(te|os))/u", "@$1", $text);
	return $text;
}

function cliticpos($text)
// Rewrite the clitic pronouns to give POS information.
{
	$text=preg_replace("/la(?!s)/u", "prn.f.3s", $text);
	$text=preg_replace("/las/u", "prn.f.3p", $text);
	$text=preg_replace("/le(?!s)/u", "prn.mf.3s", $text);
	$text=preg_replace("/les/u", "prn.mf.3p", $text);
	$text=preg_replace("/lo(?!s)/u", "prn.m.3s", $text);
	$text=preg_replace("/los/u", "prn.m.3p", $text);
	$text=preg_replace("/me/u", "prn.mf.1s", $text);
	$text=preg_replace("/te/u", "prn.mf.2s", $text);
	$text=preg_replace("/se/u", "prn.mf.3s", $text);
	$text=preg_replace("/nos/u", "prn.mf.1p", $text);
	$text=preg_replace("/os/u", "prn.mf.2p", $text);
	return $text;
}

$verb="háblenosles";
// READ IN THE VERBFORM from your text via SQL query or whatever.
// This is a sample verbform - imperative 2 singular of abandonar, with 2 singular and 3 plural clitic pronouns attached.

$first=preg_split("/#/", clitics($verb), 2);
$clitic2=$first[1];
$second=preg_split("/@/", $first[0], 2);
$cliticverb=$second[0];
$clitic1=$second[1];

// ADD YOUR VERBFORM LOOKUP HERE: 
// run an SQL query on $cliticverb to do a lookup of the verbform in the dictionary and return the pos-tagged verbform

$prclitic1="+".$clitic1.".".strtoupper(cliticpos($clitic1));
$prclitic2=(isset($clitic2)) ? "+".$clitic2.".".strtoupper(cliticpos($clitic2)) : "";

$cgline=$cliticverb."[your_POStag_info]".$prclitic1.$prclitic2;
echo $cgline."\n";

?>
