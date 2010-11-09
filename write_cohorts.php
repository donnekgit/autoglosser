<?php

/*
Copyright Kevin Donnelly 2009.

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

//Output table: none
//Output file: $filename_cg.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_cg.txt", "w") or die("Can't create the file");

$sql="select * from $words order by utterance_id, location";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$surface=pg_escape_string($row->surface);  // Required to allow lookup of words containing an apostrophe.
    $utt=$row->utterance_id;
    $loc=$row->location;
    $place=" {".$utt.",".$loc."} ";
	//echo $row->surface."\n";

    $stream="\"<".$row->surface.">\"\n";  // Each surface form ends in a newline.

	echo $stream;
	fwrite($fp, $stream);

    // The language id variables are set at the top of the includes/fns.php file.  They tell the script how to relate the langid marker to which dictionary to look up the words in.  With the new marking, the main language for the text is represented by an empty langid marker, so the main language needs to be specified there by adding "" to the relevant array there. 
	if (in_array($row->langid, $cylg))  // Look up the Welsh dictionary.
	{
        include("lookups/cy_lookup.php");	
	}
	elseif (in_array($row->langid, $enlg))  // Look up the English dictionary.
	{
        include("lookups/en_lookup.php");
	}
	elseif (in_array($row->langid, $eslg))  // Look up the Spanish dictionary.
	{
        include("lookups/es_lookup.php");
	}
    elseif (in_array($row->langid, $zerolg))  // Deal with words marked @0.
    {
        include("lookups/zero_lookup.php");
    }
	elseif ($row->langid=='999')  // Deal with punctuation.
	{
        $entry="\n";
        echo $entry;  // View
        fwrite($fp, $entry);  // Write
        unset($entry);  // Clear the decks
	}
}

fclose($fp);

?>
