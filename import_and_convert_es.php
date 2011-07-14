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

// Convert en, es tags to eng, spa tags
//exec("utils/sed_convert_es ".$chafile);
//include("utils/convert_multi.php");

echo "*\n*\nImporting $filename into $utterances\n*\n*\n";
include("cgimport.php");

echo "*\n*\nCleaning and wordifying the utterance lines\n*\n*\n";
include("rewrite_utterances.php");

include("utils/convert_es_to_precode.php");  // For predominantly Spanish conversations
//include("utils/convert_en_to_precode.php");  // For predominantly English conversations

?>
