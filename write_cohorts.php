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

// If the script is being called standalone instead of as part of the pipeline, generate default names from the filepath given
if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/siarad/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."_cg.txt", "w") or die("Can't create the file");

$sql="select * from ".$filename."_cgwords order by utterance_id, location";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$welsh=$row->welsh;
	//echo $row->welsh."\n";

	$stream="\"<".$welsh.">\"\n";
	echo $stream;
	fwrite($fp, $stream);

	if ($row->langid==LANG1)
	// The language id variables are set in the config.php file
	{
		unset($entry);

		//echo $row->utterance_id.": ".$row->location.": ".$welsh."\n";
		$sql_dict="select * from cylist where surface='$welsh'";
		$result_dict=pg_query($db_handle,$sql_dict) or die("Can't get the items");

		if (pg_num_rows($result_dict)>0)
		{
			while ($row_dict=pg_fetch_object($result_dict))
			{
				$lemma="\t\"".$row_dict->lemma."\" ";
				$pos=$row_dict->pos." ";
				$mutation=($row_dict->mutation =='') ? "" : $row_dict->mutation." ";
				$gender=($row_dict->gender =='') ? "" : $row_dict->gender." ";
				$num=($row_dict->num =='') ? "" : $row_dict->num." ";
				$tense=($row_dict->tense =='') ? "" : $row_dict->tense." ";
				$reg=($row_dict->reg =='') ? "" : $row_dict->reg." ";
				$enlemma=":".$row_dict->enlemma.": ";
				$id=$row_dict->id."\n";

				/*echo "pos: ".$pos."\n";
				echo "lemma: ".$lemma."\n";
				echo "mutation: ".$mutation."\n";
				echo "gender: ".$gender."\n";
				echo "num: ".$num."\n";
				echo "reg: ".$reg."\n";
				echo "tense: ".$tense."\n";
				echo "enlemma: ".$enlemma."\n";*/

				$entry.=pg_escape_string($lemma."cy ".$pos.$mutation.$gender.$num.$tense.$reg.$enlemma.$id);
				//$entry=preg_replace('/-=/','=',$entry);
				//$entry=preg_replace('/\^$/','',$entry);
				//echo $entry."\n";
				//echo "=============\n";
				/*
				$sql_up="update stammers4_aligned set autogloss='$entry', autoglossloc=$row->location where utterance_id=$row->utterance_id and location=$row->location";
				$result_up=pg_query($db_handle,$sql_up) or die("Can't update the items");
				*/
			}
		}
		else
		{
			$tag=(preg_match("/^[A-Z]/", $welsh)) ? "name" : "unk";
			$entry="\t\"".$welsh."\" "."cy ".$tag."\n";
		}
		echo $entry;
	}
	elseif ($row->langid==LANG4 or $row->langid==LANG5)
	{
		unset($entry);

		$sql_en="select * from enlist where surface='$welsh'";
		$result_en=pg_query($db_handle,$sql_en) or die("Can't get the items");

		if (pg_num_rows($result_en)>0)
		{
			while ($row_en=pg_fetch_object($result_en))
			{
				$surface="\t\"".$row_en->surface."\" ";
				$pos=$row_en->pos."\n";
				$entry.=pg_escape_string($surface."en ".$pos);
			}
		}
		else
		{
			$tag=(preg_match("/^[A-Z]/", $welsh)) ? "name" : "unk";
			$entry="\t\"".$welsh."\" "."en ".$tag."\n";
		}
		echo $entry;
	}
	elseif ($row->langid==LANG2 or $row->langid==LANG3)
	{
		unset($entry);

		$sql_es="select * from eslist where surface='$welsh'";
		$result_es=pg_query($db_handle,$sql_es) or die("Can't get the items");

		if (pg_num_rows($result_es)>0)
		{
			while ($row_es=pg_fetch_object($result_es))
			{
				$lemma="\t\"".$row_es->lemma."\" ";
				$pos=trim($row_es->pos)." ";
				$enlemma=":".$row_es->enlemma.": ";
				$id=$row_es->id."\n";
				$entry.=pg_escape_string($lemma."es ".$pos.$enlemma.$id);
			}
		}
		else
		{
			$tag=(preg_match("/^[A-Z]/", $welsh)) ? "name" : "unk";
			$entry="\t\"".$welsh."\" "."es ".$tag."\n";
		}
		echo $entry;
	}
	elseif ($row->langid=='999')
	{
		unset($entry);
		//$entry="\"<$".$welsh.">\"\n";
		//echo $entry;
	}

	fwrite($fp, $entry);

}

fclose($fp);

?>
