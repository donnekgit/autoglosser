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

$fp = fopen("outputs/".$utterances.".txt", "w") or die("Can't create the file");

$sql="select * from $utterances order by utterance_id";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$oldutt="(".$row->utterance_id.") ".$row->welsh."\n";
	$newutt=clean_utterance($row->welsh)."\n\n";
	echo $oldutt;
	echo $newutt;

	fwrite($fp, $oldutt);
	fwrite($fp, $newutt);

	$welsh_bits=explode(' ', $newutt);
    //print_r($welsh_bits);
    $i=1;   
    foreach ($welsh_bits as $welsh_value)
    {
        //echo $i." (of ".count($welsh_bits)."): ".htmlspecialchars($welsh_value)."<br>";
		if  (preg_match("/@/", $welsh_value))        
		{
			list($welsh_word, $langid)=explode('@', $welsh_value);
		}
		else
		{
			$welsh_word=$welsh_value;
			$langid="999";
		}
		// Need to adjust the above to allow for different language codes.
		// Perhaps set some variables (eg $lang_default) at the top.

        $welsh_word=trim(pg_escape_string($welsh_word)); 
		//echo $row->utterance_id." - ".$i." - ".$welsh_word." - ".$langid." - ".$row->speaker." - ".$row->chafile."<br />";
        $sql_w="insert into $words (utterance_id, location, welsh, langid, speaker, sourcefile) values ('$row->utterance_id', '$i', '$welsh_word', '$langid', '$row->speaker', '$row->chafile')";
        $result_w=pg_query($db_handle,$sql_w) or die("Can't insert the items");       
        $i=++$i;
        
    }
    
	if ($row->gloss != null) // don't bother looking for glosses if there are none there - check this: should be:- is not null?
	{
		$gloss_bits=explode(' ', $row->gloss);
		$j=1;
		foreach ($gloss_bits as $gloss_value)
		{        
			//echo $j." (of ".count($gloss_bits)."): ".htmlspecialchars($gloss_value)."<br>";       
			$gloss_value=trim(pg_escape_string($gloss_value));  // to deal with errant LRs on a few of the entries
			$sql_g="update $words set gloss='$gloss_value', glossloc=$j where utterance_id=$row->utterance_id and location=$j";
			$result_g=pg_query($db_handle,$sql_g) or die("Can't insert the items");       
			$j=++$j;	
		}
	}
	unset($newutt);
}

fclose($fp);

?>