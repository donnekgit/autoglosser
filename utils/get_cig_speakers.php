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

// This script scans the headers to generate a table of speakers, with age and sex.

// CREATE TABLE cig1_sp (
//     id integer serial,
//     filename character varying(20),
//     speaker character varying(3),
//     type character varying(40)
// );

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$corpus="cig1";
$target="inputs/$corpus/beta";

$speaker="";
$age="";
$sex="";

$files=scandir($target);
natsort($files);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		echo "\n".$filename."\n";

// 		$lines=file("outputs/$filename/$filename.header");  // Open the header file.

		$lines=file("$target/$file");

		foreach ($lines as $line)
		{
			if (preg_match("/@ID/", $line))  // Get ID lines and extract speaker, age and sex.
			{
				//echo $line."\n";
				preg_match('/[A-Z]{3}[^\d]/', $line, $speaker);
				$speaker=str_replace("|", "", $speaker[0]);
				//echo $speaker."\n";

// 				preg_match('/\d\d/', $line, $age);
// 				$age=$age[0];
// 				if (!isset($age)) { $age=0;}
				//echo $age."\n";

// 				preg_match('/(fe)?male/', $line, $sex);
// 				$sex=$sex[0];
// 				if (!isset($sex)) { $sex="na";}
				//echo $sex."\n";
				
				preg_match('/(Target_Child|Child|Playmate|Brother|Sister|Cousin|Mother|Father|Grandmother|Grandfather|Family_Friend|Investigator|Teacher|Adult|Unidentified)/', $line, $type);
				$type=$type[0];
				//echo $type."\n";

// 				echo $speaker.",".$age.",".$sex."\n";
				echo $speaker.",".$type."\n";

				$sql=cig_query("insert into {$corpus}_sp (filename, speaker, type) values ('$filename', '$speaker', '$type');");
			}
			
			unset($speaker, $age, $sex, $type);
		}
	}
}

?>