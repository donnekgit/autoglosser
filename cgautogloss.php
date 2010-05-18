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

$db_handle=pg_connect('host=localhost dbname=siarad user=kevin password=kevindbs');

$sql="select * from cgwords order by utterance_id, location";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$welsh=$row->welsh;
	//echo $row->welsh."\n";
	if ($row->langid=='1')
	{
		unset($entry);
		//$welsh=$row->welsh;
		//echo $row->utterance_id.": ".$row->location.": ".$welsh."\n";
		$sql_dict="select * from cylist where surface='$welsh'";
		$result_dict=pg_query($db_handle,$sql_dict) or die("Can't get the items");
		echo "\"<".$welsh.">\"\n";
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

			$entry.=pg_escape_string($lemma.$pos.$mutation.$gender.$num.$reg.$tense.$enlemma.$id);
			//$entry=preg_replace('/-=/','=',$entry);
			//$entry=preg_replace('/\^$/','',$entry);
			//echo $entry."\n";
			//echo "=============\n";
			/*
			$sql_up="update stammers4_aligned set autogloss='$entry', autoglossloc=$row->location where utterance_id=$row->utterance_id and location=$row->location";
			$result_up=pg_query($db_handle,$sql_up) or die("Can't update the items");
			*/
		}
		echo $entry;
	}
	else
	{
		unset($entry);
		$entry="\"<".$welsh.">\"\n";
		echo $entry;
	}
}

?>