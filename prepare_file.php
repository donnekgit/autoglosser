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

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Straighten out lines in the file.
exec("utils/sed_joinlines ".$chafile);
// Edits file in-place - ie it overwrites the original.  Work on a copy of the original alpha file.

// Snip out the file header - edit the bottom of sed_get_header if you are just refetching the headers.
exec("utils/sed_get_header ".$chafile);

// Update the file header
// Edit this to add any text you want to include in the header
include("utils/langid_header.php");

// Fix the precodewhere it  is mistakenly placed before the continuation markers.
//exec("utils/sh_fix_precode ".$chafile);

// Convert tags, do an initial import, and convert to precode format - see the script for more details.
// Comment out if no conversion is required.
//include("import_and_convert.php");
// This script runs some other scripts, so check it carefully to see that its settings are OK.

?>