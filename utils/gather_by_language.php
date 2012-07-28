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

// This file copies individual chat files in the target dir into subdirs based on their most-frequent language.

$target="inputs/miami/beta";

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$files=scandir($target);
natsort($files);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		echo $filename.": ";
		
		// Get the most-frequent language from the file header. 
		$lines=file("outputs/$filename/$filename.header");  // Open the header file.
		foreach ($lines as $line)
		{
			if (preg_match("/@Languages:\t/", $line))
			{
				$lgline=trim(preg_replace("/@Languages:\t/","", $line));
				$filelgs=explode(", ", $lgline);
				//print_r($filelgs);
				$mflg=$filelgs[0];
			}
		}
		echo $mflg."\n";  // Just get a printout - uncomment the lines below to do the actual copying.
		
		
		// Copy the files into appropriate dirs.
		switch ($mflg) 
		{
// 			case "cym":
// 				exec("mkdir -p $target/cym");
// 				exec("cp $target/$filename.cha $target/cym/$filename.cha");
// 				echo "\n";
// 				break;
// 			case "eng":
// 				exec("mkdir -p $target/eng");
// 				exec("cp $target/$filename.cha $target/eng/$filename.cha");
// 				echo "\n";
// 				break;
			case "spa":
				exec("mkdir -p $target/spa");
				exec("mv $target/$filename.cha $target/spa/$filename.cha");
				echo "\n";
				break;
		}
		
		
	}
}

?>