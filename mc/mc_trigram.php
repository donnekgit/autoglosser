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

// This file collects examples of trigrams.  The filename should be the first argument, and a relevant name for the subset of material should be specified as the second argument, eg php mc_trigram.php <patagonia3> <patagonia>.

$subset=$_SERVER['argv'][2];
// $mctable="mc_".$subset;
$mctable="$subset";

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}
echo $words."\n";

//echo "Determiner+Noun+Adjective\n";

// Pick out the word-type of interest ...
//$sql1=query("select * from $words where auto~'\\\.N\\\.' or auto~'\\\.A?SV\\\.' or surface~'.*ing$' order by surface");
$sql1=query("select * from $words where auto~'DET\\.(DEF|INDEF)';");
while ($row1=pg_fetch_object($sql1))
{
	$before=$row1->location - 1;
	$after=$row1->location + 1;
	$after2=$row1->location + 2;

/*
    $sql3=query("select * from $words where utterance_id=$row1->utterance_id and location=$before;");
	while ($row3=pg_fetch_object($sql3))
	{
		//if (preg_match("/\.ADJ\.?(?!POSS)/", $row3->auto) or preg_match("/\.A?SV./", $row3->auto) or preg_match("/PRESPART/", $row3->auto) or preg_match("/PASTPART/", $row3->auto))
		if (preg_match("/DET\.(DEF|INDEF)/", $row3->auto))
		{
			$sql_na=query("insert into $mctable(filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, pos1, pos2, use) values ('$row1->filename',$row1->utterance_id, $row1->location, '$row3->surface', '$row1->surface', '$row3->auto', '$row1->auto', '$row3->langid', '$row1->langid', 'det', 'n', '')");
			
			echo $row1->filename." - ".$row1->utterance_id.",".$row1->location.": ".$row3->surface." + ". $row1->surface." - ". $row3->auto." + ".$row1->auto."\n";
		}
	}  
*/
    $sql2=query("select * from $words where utterance_id=$row1->utterance_id and location=$after;");
	while ($row2=pg_fetch_object($sql2))
	{
		//if (preg_match("/\.ADJ\.?(?!POSS)/", $row2->auto) or preg_match("/\.A?SV./", $row2->auto) or preg_match("/PRESPART/", $row2->auto) or preg_match("/PASTPART/", $row2->auto) or preg_match("/\.N\./", $row2->auto) or preg_match("/.*ing$/", $row2->surface))
		//{
			$surface2=pg_escape_string($row2->surface);
			$auto2=pg_escape_string($row2->auto);
			$langid2=$row2->langid;
			
			$sql_a1=query("insert into $mctable(filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, use) values ('$row1->filename',$row1->utterance_id, $row1->location, '$row1->surface', '$surface2', '$row1->auto', '$auto2', '$row1->langid', '$langid2', '')");
		//}
	}
	
	$sql3=query("select * from $words where utterance_id=$row1->utterance_id and location=$after2;");
	while ($row3=pg_fetch_object($sql3))
	{
		//if (preg_match("/\.ADJ\.?(?!POSS)/", $row2->auto) or preg_match("/\.A?SV./", $row2->auto) or preg_match("/PRESPART/", $row2->auto) or preg_match("/PASTPART/", $row2->auto) or preg_match("/\.N\./", $row2->auto) or preg_match("/.*ing$/", $row2->surface))
		//{
			$surface3=pg_escape_string($row3->surface);
			$auto3=pg_escape_string($row3->auto);
			$langid3=$row3->langid;
			
			$sql_a2=query("update $mctable set surface3='$surface3', auto3='$auto3', langid3='$langid3' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location;");
		//}
	}

	echo $row1->filename." - ".$row1->utterance_id.",".$row1->location.": ".$row1->surface." + ". $surface2." + ". $surface3."\n";
	
	unset($surface2, $auto2, $langid2, $surface3, $auto3, $langid3);

}

?>
