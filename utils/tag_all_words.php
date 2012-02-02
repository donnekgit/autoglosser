<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// This script is the first part of a conversion of chat file marking from one predominant language to another (eg cym,spa to spa,cym).  It writes out the existing precode version of the file in the database to one with each word tagged for language.  Then adjust the header manually, and run utils/sed_get_header to clip out the revised header.  Next, import that file into the database: php import_only.php my_new_file.php.  Then run utils/convert_primary_lg.php script to write out that import into a precode version with the new predominant language.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("convert/{$filename}_alltags.cha", "w") or die("Can't create the file"); 

// Write out the file header.
$lines=file("outputs/$filename/$filename.header", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	if (preg_match("/@(Languages|ID)/", $line))
	{
		$line=preg_replace("/cym, spa/", "spa, cym", $line);  // Change the language tags.
	}
	fwrite($fp, $line."\n");
}

$surface="";

$sql3=query("select * from $utterances order by utterance_id");
while ($row3=pg_fetch_object($sql3))
{
	$fragments=explode(" ", $row3->surface);
	foreach ($fragments as $fragment)
	{
		$cleanfragment=pg_escape_string(preg_replace("/[\(\)<>]/", "", $fragment));  // Remove round and square brackets.
		$sql4="select * from $words where utterance_id=$row3->utterance_id and surface='$cleanfragment' limit 1";
		// This is not a very good query, because it simply checks whether the fragment occurs in the utterance - it assumes that the langid for the fragment will be identical over all instances.  It also returns as many hits as there are instances of the fragment in the utterance, hence the need for the limit clause - if there is more than one instance of the fragment, langids for all of these will be written out, so "no no no no creo" will get converted to "no@s:spa @s:spa @s:spa @s:spa no@s:spa @s:spa @s:spa @s:spa no@s:spa @s:spa @s:spa @s:spa no@s:spa @s:spa @s:spa @s:spa creo@s:spa", because there are 4 conversions for every instance (the number of times that instance occurs in the utterance).  The "limit 1" truncates these to just 1 instance.
		$result4=pg_query($db_handle,$sql4) or die("Can't get the items");

		if (pg_num_rows($result4)>0)  // If there is  match for the fragment ...
		{
			while ($row4=pg_fetch_object($result4))
			{
				if ($row4->langid=='999')
				{
					$fragment=$fragment." ";
				}
				else
				{
					$fragment=$fragment."@s:".$row4->langid." ";
					if (preg_match('/>@/', $fragment))  // Fix instances where the langid has been attached after an angle bracket.
					{
						$fragment=preg_replace("/>/", "", $fragment);
						$fragment=substr($fragment, 0, -1)."> ";
					}
				}
			}
		}
		else  // If there is no match for the fragment ...
		{
			$fragment=$fragment." ";
		}

		$surface.=$fragment;
		//echo $surface."\n";
	}
	
	$speech="*".$row3->speaker.":\t".$surface." ".$row3->durbegin."_".$row3->durend."\n";
	 fwrite($fp, $speech);
	
	if (isset($row3->gls))
    {
        $gls="%gls:\t".$row3->gls."\n";
        fwrite($fp, $gls); 
    }

	if (isset($row3->eng))
    {
        $eng="%eng:\t".$row3->eng."\n";
        fwrite($fp, $eng); 
    }

	 if (isset($row3->mor))
    {
        $mor="%mor:\t".$row3->mor."\n";
        fwrite($fp, $mor); 
    }

    if (isset($row3->comment))
    {
        $comment="@Comment:\t".$row3->comment."\n";
        fwrite($fp, $comment); 
    }
    
    if (isset($row3->com))
    {
        $comment="%com:\t".$row3->com."\n";
        fwrite($fp, $comment); 
    }

	echo $speech."\n";
	
	unset($surface, $speech, $gls, $eng, $mor, $comment, $com);
}

fwrite($fp, "@End\n");

fclose($fp);

?>