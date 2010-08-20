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
	echo $oldutt="(".$row->utterance_id.") ".$row->surface."\n";
	echo $newutt=clean_utterance($row->surface)."\n\n";
	//echo $oldutt;
	//echo $newutt;

	fwrite($fp, $oldutt);
	fwrite($fp, $newutt);

	$surface_bits=explode(' ', $newutt);
    //print_r($surface_bits);
    $i=1;   
    foreach ($surface_bits as $surface_value)
    {
        //echo $i." (of ".count($surface_bits)."): ".htmlspecialchars($surface_value)."<br>";

		/* For Siarad texts
		if  (preg_match("/@/", $surface_value))        
		{
			list($surface_word, $langid)=explode('@', $surface_value);
		}
		else
		{
			$surface_word=$surface_value;
			$langid="999";
		} 
		*/

		// This handles both Siarad and Patagonia langid markings in the same bit of code
		if  (preg_match("/@/", $surface_value))     
		{
			list($surface_word, $langid)=explode('@', $surface_value);  // Siarad
			$langid=preg_replace("/s:/","", $langid);  // Patagonia
		}
		elseif(preg_match("/(\.|\?|!)/", $surface_value)) 
		{
			$surface_word=$surface_value;
			$langid="999";
		} 
		else
		{
			$surface_word=$surface_value;
			$langid="";
		} 

        $surface_word=trim(pg_escape_string($surface_word)); 
		//echo $row->utterance_id." - ".$i." - ".$surface_word." - ".$langid." - ".$row->speaker." - ".$row->chafile."\n\n";
        $sql_w="insert into $words (utterance_id, location, surface, langid, speaker, filename) values ('$row->utterance_id', '$i', '$surface_word', '$langid', '$row->speaker', '$row->filename')";
        $result_w=pg_query($db_handle,$sql_w) or die("Can't insert the items");       
        $i=++$i;
        
    }

    $tiers=file("outputs/".$filename."/".$filename."_tiers.txt", FILE_SKIP_EMPTY_LINES);
    foreach ($tiers as $tier)
    {
        $tiernew="new$tier";
        $tier_bits="bits_$tier";
        $tier_value="value_$$tier";
        $clean_tier="clean_$tier";
        echo $tiernew=$row->$$tier."\n\n";
        $tier_bits=explode(' ', $tiernew);
        $j=1;
        foreach ($tier_bits as $gloss_value)
        {        
            //echo $j." (of ".count($gloss_bits)."): ".htmlspecialchars($gloss_value)."<br>";       
            $sql_g="update $words set $tier='$tier_value' where utterance_id=$row->utterance_id and location=$j";
            $result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");       
            $j=++$j;    
        }
        
    }

/*  
	if (isset($row->gls))
	{
        echo $newgloss=clean_gls($row->gls)."\n\n";
		$gloss_bits=explode(' ', $newgloss);
		$j=1;
		foreach ($gloss_bits as $gloss_value)
		{        
			//echo $j." (of ".count($gloss_bits)."): ".htmlspecialchars($gloss_value)."<br>";       
			$sql_g="update $words set gls='$gloss_value' where utterance_id=$row->utterance_id and location=$j";
			$result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");       
			$j=++$j;	
		}
	}

    if (isset($row->mor))
    {
        echo $newmor=clean_gls($row->mor)."\n\n";
        $mor_bits=explode(' ', $newmor);
        $m=1;
        foreach ($mor_bits as $mor_value)
        {        
            //echo $j." (of ".count($gloss_bits)."): ".htmlspecialchars($gloss_value)."<br>";       
            $sql_m="update $words set mor='$mor_value' where utterance_id=$row->utterance_id and location=$m";
            $result_m=pg_query($db_handle,$sql_m) or die("Can't insert the items");       
            $m=++$m;    
        }
    }
*/
	unset($newutt);
}

fclose($fp);

?>
