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

// This script removes quote pairs only when they are first and last in the line, ie it will leave quote pairs that are actual quotations.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/$filename/$filename.fixed", "w") or die("Can't create the file");

$lines=file("$chafile");  // Open the chat file.
foreach ($lines as $line)
{
	if (preg_match("/%eng:\t\"/", $line) and preg_match("/\"$/", $line))
	{
		echo "$line";
		$line=preg_replace("/\"/", "", $line);
		echo "$line\n";
	}

	fwrite($fp, $line);
}

fclose($fp);

$chapath=dirname($chafile);

exec("mv outputs/$filename/$filename.fixed $chapath/$filename.cha");

?>