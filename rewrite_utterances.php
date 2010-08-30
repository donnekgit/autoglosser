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
	echo $newutt=lineclean_surface($row->surface)."\n\n";

	fwrite($fp, $oldutt);
	fwrite($fp, $newutt);

	$surface_bits=explode(' ', $newutt);
    $i=1;   
    foreach ($surface_bits as $surface_value)
    {
        // This handles both Siarad and Patagonia langid markings in the same bit of code
		if  (preg_match("/@/", $surface_value))     
		{
			list($surface_word, $langid)=explode('@', $surface_value);  // Siarad: hwyrach@1
			$langid=preg_replace("/s:/","", $langid);  // Patagonia: oh@s:cy&es - ie, remove s: as well as split at @ 
		}
		elseif(preg_match("/(\.|\?|!)/", $surface_value)) 
		{
			$surface_word=$surface_value;
			$langid="999";
		} 
		else
		{
            // No langid tag is on the word; in this case, the language will be the one marked as blank ("") in the language arrays at the top of fns.php.
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
    if (count($tiers)>1) 
    {
        foreach ($tiers as $tier)
        {
            $tier=trim($tier);
            $lineclean_tier="lineclean_".$tier;
            $wordclean_tier="wordclean_".$tier;
            echo $treated=$lineclean_tier($row->$tier)."\n\n";  // Use this function if you want to apply changes to the whole line
            $bits=explode(' ', $treated);
            $j=1;
            foreach ($bits as $value)
            {
                //$value=$wordclean_tier($value);  // Use this function if you want to apply changes to the individual word entries
                //echo $j." (of ".count($gloss_bits)."): ".htmlspecialchars($gloss_value)."<br>";       
                $sql_g="update $words set $tier='$value' where utterance_id=$row->utterance_id and location=$j";
                $result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");
                $j=++$j;    
            }
            unset($tier);
        } 
    }
	unset($newutt);
}

fclose($fp);

?>
