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

# This script changes uh to y and um to ym in the autoglossed files in the individual outputs folders.  This is a Welsh orthographical change.
# We fix instances of uh/um where they are preceded or followed by spaces or tabs, or angle brackets, or followed by end of line.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$autopath="outputs/$filename/{$filename}_autoglossed.txt";
$texpath="outputs/$filename/$filename.tex";

//$autopath="inputs/patagonia/test_um/$filename.cha";
//$texpath="inputs/patagonia/test_um/$filename.tex";

// Rewrite um and uh in the speech tier of predominantly-Spanish autoglossed files
exec("sed -ri '/\*[A-Z]*:/s/([[:blank:]]|<)um@s:cym([[:blank:]]|>|$)/\\1ym@s:cym\\2/g' $autopath");
exec("sed -ri '/\*[A-Z]*:/s/([[:blank:]]|<)uh@s:cym([[:blank:]]|>|$)/\\1ý@s:cym\\2/g' $autopath");

// Rewrite um and uh in the speech tier of predominantly-Welsh autoglossed files
exec("sed -ri '/\*[A-Z]*:/s/([[:blank:]]|<)um([[:blank:]]|>|$)/\\1ym\\2/g' $autopath");
exec("sed -ri '/\*[A-Z]*:/s/([[:blank:]]|<)uh([[:blank:]]|>|$)/\\1ý\\2/g' $autopath");

// Rewrite um and uh in the speech tiers of predominantly-Spanish LaTeX files
exec("sed -ri '/glpre/s/([[:blank:]]|<)um(@s:cym)([[:blank:]]|>|$)/\\1ym\\2\\3/g' $texpath");
exec("sed -ri '/gla/s/([[:blank:]]|<)um(\\$\^\{C\}\\$)([[:blank:]]|>|$)/\\1ym\\2\\3/g' $texpath");
exec("sed -ri '/glpre/s/([[:blank:]]|<)uh(@s:cym)([[:blank:]]|>|$)/\\1ý\\2\\3/g' $texpath");
exec("sed -ri '/gla/s/([[:blank:]]|<)uh(\\$\^\{C\}\\$)([[:blank:]]|>|$)/\\1ý\\2\\3/g' $texpath");

// Rewrite um and uh in the speech tiers of predominantly-Welsh autoglossed LaTeX files
exec("sed -ri '/gl(pre|a)/s/([[:blank:]]|<)um([[:blank:]]|>|$)/\\1ym\\2/g' $texpath");
exec("sed -ri '/gl(pre|a)/s/([[:blank:]]|<)uh([[:blank:]]|>|$)/\\1ý\\2/g' $texpath");

?>
