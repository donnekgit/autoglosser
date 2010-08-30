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
	$surface=$row->surface;
	//echo $row->surface."\n";

	$stream="\"<".$surface.">\"\n";
	echo $stream;
	fwrite($fp, $stream);

	if (in_array($row->langid, $cylg))  // Look up the Welsh dictionary.
	// The language id variables are set at the top of the includes/fns.php file
	{
        $entry="";

		//echo $row->utterance_id.": ".$row->location.": ".$surface."\n";
		$sql_cy="select * from cylist where surface='$surface'";
		$result_cy=pg_query($db_handle,$sql_cy) or die("Can't get the items");

		if (pg_num_rows($result_cy)>0)  // if there is an entry for the word in the dictionary
		{
			while ($row_cy=pg_fetch_object($result_cy))
			{
				$lemma="\t\"".$row_cy->lemma."\" ";
				$pos=$row_cy->pos." ";
				$mutation=($row_cy->mutation =='') ? "" : $row_cy->mutation." ";  // if there is no entry in the mutation field, let $mutation be empty; if there is an entry, let $mutation be that plus a space
				$gender=($row_cy->gender =='') ? "" : $row_cy->gender." ";
				$num=($row_cy->num =='') ? "" : $row_cy->num." ";
				$tense=($row_cy->tense =='') ? "" : $row_cy->tense." ";
				$reg=($row_cy->reg =='') ? "" : $row_cy->reg." ";
				$enlemma=":".$row_cy->enlemma.": ";
				$id=$row_cy->id."\n";

				$entry.=pg_escape_string($lemma."[cy] ".$pos.$mutation.$gender.$num.$tense.$reg.$enlemma.$id);  // glue together all the fields for the word
			}
		}
		else  // if there is no entry for the word in the dictionary
		{
			$tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "unk";
			$entry="\t\"".$surface."\" "."[cy] ".$tag."\n";
		}
		echo $entry;
	}
	elseif (in_array($row->langid, $enlg))  // Look up the English dictionary.
	{
        $entry="";

		$sql_en="select * from enlist where surface='$surface'";
		$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");

		if (pg_num_rows($result_en)>0)
		{
			while ($row_en=pg_fetch_object($result_en))
			{
				$surface="\t\"".$row_en->surface."\" ";
				$pos=$row_en->pos."\n";

				$entry.=pg_escape_string($surface."[en] ".$pos);
			}
		}
		else
		{
			$tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "unk";
			$entry="\t\"".$surface."\" "."[en] ".$tag."\n";
		}
		echo $entry;
	}
	elseif (in_array($row->langid, $eslg))  // Look up the Spanish dictionary.
	{
        include("es_lookup.php");
	}
	elseif ($row->langid=='999')
	{
        $entry="";
		//$entry="\"<$".$surface.">\"\n";
		//echo $entry;
	}

	fwrite($fp, $entry);
    unset($entry);
}

fclose($fp);

?>
