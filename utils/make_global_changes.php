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

// This script makes changes to the headers of the .cha files in situ.  The other script, langid_header.php, makes changes to the standalone header files only.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$fp = fopen("$chafile", "r+") or die("Can't create the file");
$fp=fopen("outputs/$filename/$filename.fixed", "w") or die("Can't create the file");

$lines=file("$chafile");  // Open the chat file.
foreach ($lines as $line)
{
	if (preg_match("/@(Languages|ID)/", $line))
	{
		// Change the language tags - without this change, CLAN apps such as freq will not work properly
// 		$line=preg_replace("/cy, ?es, ?en/", "cym, spa, eng", $line);
// 		$line=preg_replace("/cy, ?es/", "cym, spa", $line);
// 		$line=preg_replace("/es, ?cy/", "spa, cym", $line);
// 		$line=preg_replace("/cy, ?en/", "cym, eng", $line); 
// 		$line=preg_replace("/en, ?cy/", "eng, cym", $line); 
// 		$line=preg_replace("/es, ?en/", "spa, eng", $line);  
// 		$line=preg_replace("/en, ?es/", "eng, spa", $line);
// 		$line=preg_replace("/cy\|/", "cym|", $line);  
// 		$line=preg_replace("/en\|/", "eng|", $line);  
// 		$line=preg_replace("/es\|/", "spa|", $line);  
	}
	elseif (preg_match("/@Font/", $line))
	{
		//$line="@Font:	Win95:Arial Unicode MS:-21:0\n";  // Standard font size
	}
	elseif (preg_match("/@Comment:	Filename:/", $line))
	{
// 		$line=preg_replace("/^.*$\n/", "", $line);
	}
	elseif (preg_match("/(UNFINISHED|UNPROOFED)/", $line))  // Remove any warnings or comments that suggest the file is unfinished.
	{
		//$line=preg_replace("/^.*$/", "", $line);  
	}
	elseif (preg_match("/@Comment:\tFilename:/", $line))  // Replace incorrectly capitalised file extensions.
	{
		//$line=preg_replace("/\.CHA/", ".cha", $line);  
		//$line=preg_replace("/\.WAV/", ".wav", $line);  
	}
	elseif (preg_match("/@Coder:\t/", $line))  // Replace "coder" with "transcriber"
	{
		//$line=preg_replace("/Coder/", "Transcriber", $line);  
	}
	elseif (preg_match("/@Time Duration/", $line))  // Add a new @Media line
	{
		//$line=$line."@Media:\t$filename, audio\n";  
	}
	elseif (preg_match("/@Comment:\tLanguage markers:/", $line))  
	{
		// Replace with a completely new line for Patagonia files:
		//$line=preg_replace("/^.*$/", "@Comment:	Language markers: @s:spa = Spanish, @s:eng = English, @s:cym&spa = Undetermined, @s:spa+cym = word with first morpheme(s) Spanish, second morpheme(s) Welsh, @s:cym+spa = word with first morpheme(s) Welsh, second morpheme(s) Spanish. Untagged words are Welsh except where part of an utterance headed [- spa], in which untagged words are Spanish.", $line);  
		// Replace with a completely new line for mainly-Spanish Patagonia files:
		//$line=preg_replace("/^.*$/", "@Comment:\tLanguage markers: @s:cym = Welsh, @s:eng = English, @s:cym&spa = Undetermined, @s:spa+cym = word with first morpheme(s) Spanish, second morpheme(s) Welsh, @s:cym+spa = word with first morpheme(s) Welsh, second morpheme(s) Spanish. Untagged words are Spanish except where part of an utterance headed [- cym], in which untagged words are Welsh.", $line); 
		// Replace with a completely new line for mainly-English Miami files:
		//$line=preg_replace("/^.*$/", "@Comment:	Language markers: @s:spa = Spanish, @s:eng&spa = Undetermined, @s:spa+eng = word with first morpheme(s) Spanish, second morpheme(s) English, @s:eng+spa = word with first morpheme(s) English, second morpheme(s) Spanish. Untagged words are English except where part of an utterance headed [- spa], in which untagged words are Spanish.", $line);  
		// Replace with a completely new line for mainly-Spanish Miami files:
		//$line=preg_replace("/^.*$/", "@Comment:	Language markers: @s:eng = English, @s:eng&spa = Undetermined, @s:spa+eng = word with first morpheme(s) Spanish, second morpheme(s) English, @s:eng+spa = word with first morpheme(s) English, second morpheme(s) Spanish. Untagged words are Spanish except where part of an utterance headed [- eng], in which untagged words are English.", $line); 
		// Replace with a completely new line for Siarad files:
		//$line=preg_replace("/^.*$/", "@Comment:\tLanguage markers: @s:eng = English, @s:cym&eng = Undetermined, @s:eng+cym = word with first morpheme(s) English, second morpheme(s) Welsh, @s:cym+eng = word with first morpheme(s) Welsh, second morpheme(s) English. Untagged words are Welsh except where part of an utterance headed [- eng], in which untagged words are English.", $line);
	}
	else
	{
		//$line=revert_punctuation($line);  // fns.php - fixes mistaken punctuation corrections, eg +// . instead of +//.

		//$line=global_change($line);
		//$line=preg_replace("/@s:spa+cy/", "@s:spa+cym", $line);
		//$line=preg_replace("/%snd:\"patagonia\d\d?\"_/", "", $line);  // fix patagonia sound-bullets
		//$line=preg_replace("/%snd:\"(herring|sastre|zeledon)\d\d?\"_/", "", $line);  // fix miami sound-bullets
	}
	
	//echo $line."\n";
	//print_r($lines);
	fwrite($fp, $line);
}

fclose($fp);

$chapath=dirname($chafile);

exec("mv outputs/$filename/$filename.fixed $chapath/$filename.cha");

?>