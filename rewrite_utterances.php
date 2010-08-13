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

//Output table: $filename_cgwords
//Output file: $filename_cgutterances_rewritten.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

echo "*\n*\nCreating the $words table\n*\n*\n";
include("create_cgwords.php");

$fp = fopen("outputs/".$filename."/".$utterances."_rewritten.txt", "w") or die("Can't create the file");

$sql="select * from $utterances order by utterance_id";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	echo $oldutt="(".$row->utterance_id.") ".$row->mainlang."\n";
	echo $newutt=clean_utterance($row->mainlang)."\n\n";
	//echo $oldutt;
	//echo $newutt;

	fwrite($fp, $oldutt);
	fwrite($fp, $newutt);

	$mainlang_bits=explode(' ', $newutt);
    //print_r($mainlang_bits);
    $i=1;   
    foreach ($mainlang_bits as $mainlang_value)
    {
        //echo $i." (of ".count($mainlang_bits)."): ".htmlspecialchars($mainlang_value)."<br>";

		/* For Siarad texts
		if  (preg_match("/@/", $mainlang_value))        
		{
			list($mainlang_word, $langid)=explode('@', $mainlang_value);
		}
		else
		{
			$mainlang_word=$mainlang_value;
			$langid="999";
		} 
		*/

		// This handles both Siarad and Patagonia langid markings in the same bit of code
		if  (preg_match("/@/", $mainlang_value))     
		{
			list($mainlang_word, $langid)=explode('@', $mainlang_value);  // Siarad
			$langid=preg_replace("/s:/","", $langid);  // Patagonia
		}
		elseif(preg_match("/(\.|\?|!)/", $mainlang_value)) 
		{
			$mainlang_word=$mainlang_value;
			$langid="999";
		} 
		else
		{
			$mainlang_word=$mainlang_value;
			$langid="";
		} 

        $mainlang_word=trim(pg_escape_string($mainlang_word)); 
		//echo $row->utterance_id." - ".$i." - ".$mainlang_word." - ".$langid." - ".$row->speaker." - ".$row->chafile."\n\n";
        $sql_w="insert into $words (utterance_id, location, mainlang, langid, speaker, filename) values ('$row->utterance_id', '$i', '$mainlang_word', '$langid', '$row->speaker', '$row->filename')";
        $result_w=pg_query($db_handle,$sql_w) or die("Can't insert the items");       
        $i=++$i;
        
    }
    
	if ($row->gloss != null) // don't bother looking for glosses if there are none there - check this: should be:- is not null?
	{
        echo $newgloss=clean_gloss($row->gloss)."\n\n";
		$gloss_bits=explode(' ', $newgloss);
		$j=1;
		foreach ($gloss_bits as $gloss_value)
		{        
			//echo $j." (of ".count($gloss_bits)."): ".htmlspecialchars($gloss_value)."<br>";       
			$sql_g="update $words set gloss='$gloss_value', glossloc=$j where utterance_id=$row->utterance_id and location=$j";
			$result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");       
			$j=++$j;	
		}
	}
	unset($newutt);
}

fclose($fp);

?>
