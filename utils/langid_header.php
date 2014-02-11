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

// Compare also the file make_global_changes.php, which covers some of the same ground, but makes changes to the files in situ.  This file makes changes to the standalone header files only.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/$filename/$filename.header", "w") or die("Can't create the file");

$lines=file("outputs/$filename/$filename.snip");  // Open the snipped header file.
foreach ($lines as $line)
{
	if (preg_match("/@(Languages|ID)/", $line))
	{
		// Change the language tags - without this change, CLAN apps such as freq will not work properly
		$line=preg_replace("/cy, ?es, ?en/", "cym, spa, eng", $line);
		$line=preg_replace("/cy, ?es/", "cym, spa", $line); 
		$line=preg_replace("/es, ?cy/", "spa, cym", $line);  
		$line=preg_replace("/es, ?en/", "spa, eng", $line);  
		$line=preg_replace("/en, ?es/", "eng, spa", $line);  
	}
	elseif (preg_match("/(UNFINISHED|UNPROOFED)/", $line))  // Remove any warnings or comments that suggest the file is unfinished.
	{
		$line=preg_replace("/^.*$/", "", $line);  
	}
	elseif (preg_match("/@Comment:\tFilename:/", $line))  // Replace incorrectly capitalised file extensions.
	{
		$line=preg_replace("/\.CHA/", ".cha", $line);  
		$line=preg_replace("/\.WAV/", ".wav", $line);  
	}
	elseif (preg_match("/@Comment:\tLanguage markers:/", $line))  
	{
		//$line=update_langids($line);  // Replace all language tags that do not correspond to the default 3-letter tags
		// Replace with a completely new line for Patagonia files:
		//$line=preg_replace("/^.*$/", "@Comment:\tLanguage markers: @s:spa = Spanish, @s:eng = English, @s:cym&spa = Undetermined, @s:spa+cym = word with first morpheme(s) Spanish, second morpheme(s) Welsh, @s:cym+spa = word with first morpheme(s) Welsh, second morpheme(s) Spanish. Untagged words are Welsh except where part of an utterance headed [- spa], in which untagged words are Spanish.", $line);
		// Replace with a completely new line for mainly-Spanish Patagonia files:
		//$line=preg_replace("/^.*$/", "@Comment:\tLanguage markers: @s:cym = Welsh, @s:eng = English, @s:cym&spa = Undetermined, @s:spa+cym = word with first morpheme(s) Spanish, second morpheme(s) Welsh, @s:cym+spa = word with first morpheme(s) Welsh, second morpheme(s) Spanish. Untagged words are Spanish except where part of an utterance headed [- cym], in which untagged words are Welsh.", $line); 
		// Replace with a completely new line for mainly-English Miami files:
		//$line=preg_replace("/^.*$/", "@Comment:	Language markers: @s:spa = Spanish, @s:eng&spa = Undetermined, @s:spa+eng = word with first morpheme(s) Spanish, second morpheme(s) English, @s:eng+spa = word with first morpheme(s) English, second morpheme(s) Spanish. Untagged words are English except where part of an utterance headed [- spa], in which untagged words are Spanish.", $line);  
		// Replace with a completely new line for mainly-Spanish Miami files:
		//$line=preg_replace("/^.*$/", "@Comment:	Language markers: @s:eng = English, @s:eng&spa = Undetermined, @s:spa+eng = word with first morpheme(s) Spanish, second morpheme(s) English, @s:eng+spa = word with first morpheme(s) English, second morpheme(s) Spanish. Untagged words are Spanish except where part of an utterance headed [- eng], in which untagged words are English.", $line); 
		// Replace with a completely new line for Siarad files:
		$line=preg_replace("/^.*$/", "@Comment:\tLanguage markers: @s:eng = English, @s:cym&eng = Undetermined, @s:eng+cym = word with first morpheme(s) English, second morpheme(s) Welsh, @s:cym+eng = word with first morpheme(s) Welsh, second morpheme(s) English. Untagged words are Welsh except where part of an utterance headed [- eng], in which untagged words are English.", $line);
	}
	else
	{
		$line=$line;
	}
	//echo $line."\n";
	fwrite($fp, $line);  // Write the header to the standalone header file
}

fclose($fp);

?>