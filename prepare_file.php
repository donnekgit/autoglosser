<?php

/*
Copyright Kevin Donnelly 2010.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

//Output table: $filename_cgutterances
//Output file: $filename_cgutterances.txt

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Straighten out lines in the file
exec("utils/sed_joinlines ".$chafile);

// Snip out the header lines and put them into the outputs folder for future use
exec("utils/sed_get_header ".$chafile);

// Uncomment if you want to replace old-style CLAN tags with new-style CLAN tags.
//exec("utils/sed_convert_lgid ".$chafile);

echo "REMEMBER TO CHANGE THE LANGUAGE SETTINGS!\n";

?>