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

// Set up the two languages to be counted as indeterminate
$indeter="eng&spa";

$fp = fopen("outputs/$filename/$filename.header", "w") or die("Can't create the file");

$lines=file("$chafile");  // Open the chat file.
foreach ($lines as $line)
{
	// Snip out the header lines
	if (!preg_match("/^\*/", $line) and !preg_match("/^%/", $line) and !preg_match("/@End/", $line))
	{
		if (preg_match("/@(Languages|ID)/", $line))
		{
			// Change the language tags - without this change, CLAN apps such as freq will not work properly
			$line=preg_replace("/es, ?en/", "spa, eng", $line);  
			$line=preg_replace("/en, ?es/", "eng, spa", $line);  
		}
		elseif (preg_match("/(UNFINISHED|UNPROOFED)/", $line))  // Remove any warnings or comments that suggest the file is unfinished.
		{
			$line=preg_replace("/^.*$/", "", $line);  
		}
		elseif (preg_match("/@Comment/", $line))  // Replace all language tags that do not correspond to the default 3-letter tags
		{
			$line=update_langids($line);
		}
		else
		{
			$line=$line;
		}
		
		//echo $line."\n";
		fwrite($fp, $line);  // Write the header to the standalone header file
	}
}

?>