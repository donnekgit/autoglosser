<?php

//Copyright 2006 Kevin Donnelly, kevin@dotmon.com

/*
This file is part of Eurfa, a free dictionary for Welsh.

Eurfa is free software; you can redistribute it and/or modify it under the 
terms of the GNU General Public License as published by the Free Software 
Foundation; either version 2 of the License, or (at your option) any later version.

Eurfa is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

A copy of the GNU General Public License is included along with Eurfa in the file 
COPYING; if this file is missing, a copy is available at http://www.gnu.org/licenses/gpl.txt, 
or you can write to the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, 
Boston, MA  02110-1301  USA.
*/

function query($sql)
// simplify the query writing
// use this as: $result=query("select * from table")
{
    global $db_handle;
    return pg_exec($db_handle,$sql);
}

function checklg($var)
// tries to make the language calls a bit more secure
// by checking that they contain only "en" or "cy"
{
        if ($var =="en" or $var=="cy")
        {
        return true;
        }
        else
        {
        echo "Rhaid i chi benodi iaith<br>You need to specify a language";
        exit;
        }
}

function checktext($var)
{
	for ($i = 0; $i < strlen($var); $i++) 
	{
		if (!ereg("[-A-Za-z_0-9ËëÏïÖöÂâÊêÎîÔôÛûŴŵŶŷÁá ]", $var[$i]))
		{
               echo "Ni allaf dderbyn hynny...<br>I'm not allowed to accept that ...";
			exit;
		}
    }
}

function checkrhig($var)
// tries to make input to Rhigymydd a bit more secure
{
        if (preg_match("/^[-a-z_ëïöâêîôûŵŷá\(\)\[\]\|\?\^]+$/",$var))
        {
        return true;
        }
        else
        {
        global $title;
        $title="What happened there?";
        include("header.php");
        include("error2.php");
        include("footer.php");
        exit;
        }
}

function checkint($var)
{
	if (ereg("^[0-9]+$", $foo))
	{
		return true;
	}
	else
	{
	echo "Roeddwn i'n disgwyl cyfanrif...<br>I was expecting an integer...";
	exit;
	}
}

function show_array($array)
// shows the contents of an array
{
	foreach ($array as $value)
	{
		if (is_array($value))
		{
			show_array($value); 
		}
		else
		{
			echo $value . "<br>"; 
		} 
	}
}

function meddal($text)
// do soft mutations - note that the order of these regex replacements is significant;
// letters in the regex must be placed before their occurrence as replacements
{
	$text=preg_replace("/^b/", "f", $text);
	$text=preg_replace("/^B/", "F", $text);
	$text=preg_replace("/^d([^d])/", "dd$1", $text);
	$text=preg_replace("/^D([^d])/", "Dd$1", $text);
	$text=preg_replace("/^g/", "", $text);
	$text=preg_replace("/^G/", "", $text);
	$text=preg_replace("/^c([^h])/", "g$1", $text);
	$text=preg_replace("/^C([^h])/", "G$1", $text);
	$text=preg_replace("/^p([^h])/", "b$1", $text);
	$text=preg_replace("/^P([^h])/", "B$1", $text);
	$text=preg_replace("/^t([^h])/", "d$1", $text);
	$text=preg_replace("/^T([^h])/", "D$1", $text);
	$text=preg_replace("/^ll/", "l", $text);
	$text=preg_replace("/^Ll/", "L", $text);
	$text=preg_replace("/^rh/", "r", $text);
	$text=preg_replace("/^Rh/", "R", $text);
	$text=preg_replace("/^m/", "f", $text);
	$text=preg_replace("/^M/", "F", $text);
	return $text;
}

function trwynol($text)
// do nasal mutations
{
	$text=preg_replace("/^c([^h])/", "ngh$1", $text);
	$text=preg_replace("/^C([^h])/", "Ngh$1", $text);
	$text=preg_replace("/^p([^h])/", "mh$1", $text);
	$text=preg_replace("/^P([^h])/", "Mh$1", $text);
	$text=preg_replace("/^t([^h])/", "nh$1", $text);
	$text=preg_replace("/^T([^h])/", "Nh$1", $text);
	$text=preg_replace("/^g/", "ng", $text);
	$text=preg_replace("/^G/", "Ng", $text);
	$text=preg_replace("/^b/", "m", $text);
	$text=preg_replace("/^B/", "M", $text);
	$text=preg_replace("/^d([^d])/", "n$1", $text);
	$text=preg_replace("/^D([^d])/", "N$1", $text);
	return $text;
}

function llaes($text)
// do aspirate  mutations
{
	$text=preg_replace("/^c([^h])/", "ch$1", $text);
	$text=preg_replace("/^C([^h])/", "Ch$1", $text);
	$text=preg_replace("/^p([^h])/", "ph$1", $text);
	$text=preg_replace("/^P([^h])/", "Ph$1", $text);
	$text=preg_replace("/^t([^h])/", "th$1", $text);
	$text=preg_replace("/^T([^h])/", "Th$1", $text);
	return $text;
}

function add_h($text)
// add h- before initial vowels
{
	$text=preg_replace("/^a/", "ha", $text);
	$text=preg_replace("/^e/", "he", $text);
	$text=preg_replace("/^i/", "hi", $text);
	$text=preg_replace("/^o/", "ho", $text);
	$text=preg_replace("/^u/", "hu", $text);
	$text=preg_replace("/^w/", "hw", $text);
	$text=preg_replace("/^y/", "hy", $text);
	return $text;
}

function punctuate($text)
// insert space before punctuation marks, so that trosiadur can retain them
{
	$text=preg_replace("/,/"," , ", $text);
	$text=preg_replace("/\./"," . ", $text);
	$text=preg_replace("/!/"," !", $text);
	$text=preg_replace("/\?/"," ? ", $text);
	$text=preg_replace("/;/"," ; ", $text);
	$text=preg_replace("/:/"," : ", $text);
	$text=preg_replace("/\(/"," ( ", $text);
	$text=preg_replace("/\)/"," ) ", $text);
	$text=preg_replace("/\^s/"," [poss] ", $text);
	$text=preg_replace("/\*\*/"," [quote] ", $text);
	$text=preg_replace("/\n/"," [newline] ", $text);
	return $text;
}

function depunctuate($text)
// delete space before punctuation marks, so that trosiadur can put them back
{
	$text=preg_replace("/ ,/",",", $text);
	$text=preg_replace("/ \./",". ", $text);
	$text=preg_replace("/ !/","! ", $text);
	$text=preg_replace("/ \?/","? ", $text);
	$text=preg_replace("/ ;/",";", $text);
	$text=preg_replace("/ :/",":", $text);
	$text=preg_replace("/ \( /"," (", $text);
	$text=preg_replace("/ \)/",")", $text);
	$text=preg_replace("/{\[quote\]}/","\"", $text);
	$text=preg_replace("/{\[poss\]}/","", $text);
	$text=preg_replace("/{\[newline\]}/","<br>", $text);
	return $text;
}

function fix_verb($text)
// used in trosiadur
{
	$text=preg_replace("/past 1 singular/"," (past) I", $text);
	$text=preg_replace("/past 3 singular/"," (past) he/she/it", $text);
	$text=preg_replace("/present 2 plural/"," (present) you", $text);
	$text=preg_replace("/imperative 2 plural/"," (imperative) you", $text);
	$text=preg_replace("/present 2 singular/"," (present) you", $text);
	$text=preg_replace("/present 3 singular/"," (present) he/she/it", $text);
	$text=preg_replace("/imperative 2 singular/"," (imperative) you", $text);
	return ($text);
}

function trans_pos($text)
// translate grammatical info on the Welsh pages
// this is a bit of a kludge, but it works OK
// and the only alternative is to keep POS info in the table in both languages
{
	$text=preg_replace("/soft mutation/", "treiglad meddal", $text);
	$text=preg_replace("/nasal mutation/", "treiglad trwynol", $text);
	$text=preg_replace("/aspirate mutation/", "treiglad llaes", $text);
	$text=preg_replace("/addition/", "ychwanegiad", $text);
	$text=preg_replace("/initial h/", "h cychwynnol", $text);
	$text=preg_replace("/ of:/", " o:", $text);
	$text=preg_replace("/ to:/", " i:", $text);
	$text=preg_replace("/- ns /", "- eu ", $text);
	$text=preg_replace("/- np /", "- ell ", $text);
	$text=preg_replace("/\[m/", "[g", $text);
	$text=preg_replace("/\[f/", "[b", $text);
	$text=preg_replace("/\[mf/", "[gb", $text);
	$text=preg_replace("/- v /", "- be ", $text);
	$text=preg_replace("/present/", "presennol", $text);
	$text=preg_replace("/future/", "dyfodol", $text);
	$text=preg_replace("/past/", "gorffennol", $text);
	$text=preg_replace("/imperfect/", "amherffaith", $text);
	$text=preg_replace("/pluperfect/", "gorberffaith", $text);
	$text=preg_replace("/conditional/", "amodol", $text);
	$text=preg_replace("/imperative/", "gorchmynnol", $text);
	$text=preg_replace("/subjunctive/", "dibynnol", $text);
	$text=preg_replace("/singular/", "unigol", $text);
	$text=preg_replace("/plural/", "lluosog", $text);
	$text=preg_replace("/impersonal/", "amhersonol", $text);
	$text=preg_replace("/short/", "byr", $text);
	$text=preg_replace("/spoken/", "llafar", $text);
	return $text;
}

function lose_brackets($text)
// get rid of empty square brackets when there is no gender info
{
	$text=preg_replace("/\[\]/", "", $text);
	return $text;
}

function stupid_h($text)
{
	$text=preg_replace("/h cychwynnol mutation o:/", "ychwanegiad o h cychwynnol i:", $text);
	$text=preg_replace("/initial h mutation of:/", "addition of initial h to:", $text);
	return $text;
}

function pluralise($text)
// generate the English plural of a word
{
	// this does not catch every plural, but it should get around 90% of them
	// individual words can be added along the lines of the first few lines
	// but if they are one-of-a-kinds they're unlikely to be amenable to the pluraliser anyway
	// Where the plural does not end in -s, we add # as an "end-of-word" marker to prevent the default "s" being added
	// it is stripped by the last rule
	$text=preg_replace("/matrix$/", "matrices", $text); // matrix
	$text=preg_replace("/(ind|vert)ex$/", "$1ices", $text); // index, vertex
	$text=preg_replace("/(potat|tomat)o$/", "$1oes", $text); // potato, tomato
	$text=preg_replace("/(m|l)ouse$/", "$1ice#", $text); // mouse, louse
	$text=preg_replace("/man$/", "men#", $text); // *man
	$text=preg_replace("/person$/", "people#", $text); // *person
	$text=preg_replace("/child$/", "children#", $text); // child
	$text=preg_replace("/genus$/", "genera#", $text); // genus
	$text=preg_replace("/money$/", "monies#", $text); // money
    $text=preg_replace("/(stimul|radi)us$/", "$1i#", $text); // stimulus, radius
	$text=preg_replace("/us$/", "$1uses", $text); // bus, virus, octopus, status, corpus
	$text=preg_replace("/um$/", "a#", $text); // datum, medium, maximum
	$text=preg_replace("/sh$/", "shes", $text); // ash
	$text=preg_replace("/ch$/", "ches", $text); // switch
	$text=preg_replace("/x$/", "xes", $text); // fox
	$text=preg_replace("/ece$/", "eces", $text); // piece, fleece
	$text=preg_replace("/([^e])se$/", "$1ses", $text); // grouse, crease
	$text=preg_replace("/ese$/", "ese#", $text); // Pekinese
	$text=preg_replace("/ss$/", "sses", $text); // process
	$text=preg_replace("/as$/", "ases", $text); // alias
	$text=preg_replace("/is$/", "es", $text); // basis, axis, crisis
    $text=preg_replace("/(?<=[^ae])y$/", "ies", $text); //ability, query, controversy, energy, etc
	$text=preg_replace("/f$/", "ves", $text); // hoof, loaf, turf, dwarf
	$text=preg_replace("/([^s|#])$/", "$1s", $text); // default (except where the word already ends in s)
	$text=preg_replace("/#$/", "", $text); // strip the "end-of-word" character
	return $text;
}

// Klebran

function gram_hint($text)
// give hints on the likely grammatical nature of an unknown word, based on its ending
{
	if (preg_match("/ol$/",$text)) {$hint="Many adjectives end in <strong>-ol</strong>";}
	if (preg_match("/us$/",$text)) {$hint="Many adjectives end in <strong>-us</strong>";}
	if (preg_match("/aidd$/",$text)) {$hint="Many adjectives end in <strong>-aidd</strong>";}
	if (preg_match("/io$/",$text)) {$hint="Many verb infinitives (also known as verbal nouns) end in <strong>-io</strong>";}
	return $hint;
}

function err_tag($text)
// generate a short form of the error, for use in CSS and page-routing
{
	global $gr_error;
	if (preg_match("/anhysbys/","$gr_error")) {$text="anhysbys";}
	if (preg_match("/meddal/","$gr_error")) {$text="meddal";}
	if (preg_match("/trwynol/","$gr_error")) {$text="trwynol";}
	if (preg_match("/llaes/","$gr_error")) {$text="llaes";}
	if (preg_match("/dieithr/","$gr_error")) {$text="dieithr";}
	if (preg_match("/anarferol/","$gr_error")) {$text="anarferol";}
	if (preg_match("/cyfansoddair/","$gr_error")) {$text="cyfsodd";}
	return $text;
}

function eurfa_address($text)
//generate a hyperlink so that a word can be looked up in Eurfa
{
	global $lookup;
	$lookup[]=preg_replace("/$text/", "<a href=\"chwiliad_e.php?lg=cy&text=$text\">$text</a>", $text);
}

function de_meddal($text)
// remove soft mutations so that the word can be looked up in Eurfa
// note that the order of these regex replacements is significant;
// letters in the regex must be placed before their occurrence as replacements
{
	$text=preg_replace("/^g/", "c", $text);
	$text=preg_replace("/^G/", "C", $text);
	$text=preg_replace("/^l/", "ll", $text);
	$text=preg_replace("/^L/", "Ll", $text);
	$text=preg_replace("/^r/", "rh", $text);
	$text=preg_replace("/^R/", "Rh", $text);
	$text=preg_replace("/^l([^l])/", "gl", $text);
	$text=preg_replace("/^L([^l])/", "Gl", $text);
	$text=preg_replace("/^r([^h])/", "gr", $text);
	$text=preg_replace("/^R([^h])/", "Gr", $text);
	$text=preg_replace("/^([aeoiuwyïŵŷ])/", "g$1", $text);
	$text=preg_replace("/^([AEOIUWYÏŴŶ])/", "G$1", $text);
	$text=preg_replace("/^f/", "[mb]", $text);
	$text=preg_replace("/^F/", "[MB]", $text);
	$text=preg_replace("/^b/", "p", $text);
	$text=preg_replace("/^B/", "P", $text);
	$text=preg_replace("/^d([^d])/", "t$1", $text);
	$text=preg_replace("/^D([^d])/", "T$1", $text);
	$text=preg_replace("/^dd/", "d", $text);
	$text=preg_replace("/^Dd/", "D", $text);
	return $text;
}

?>