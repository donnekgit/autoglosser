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

// This file collects examples of n+adj or adj+n.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$fp = fopen("outputs/".$filename."/".$filename."_autoglossed.txt", "w") or die("Can't create the file");

echo "Noun+Adjective\n";

$sql1=query("select * from $words where auto~'\\\.N\\\.' order by utterance_id, location");
while ($row1=pg_fetch_object($sql1))
{
    $sql2=query("select * from $words where utterance_id=$row1->utterance_id and location=$row1->location + 1");
	while ($row2=pg_fetch_object($sql2))
	{
		if (preg_match("/\.ADJ\.(?!POSS)/", $row2->auto))
		{
			$sql_na=query("insert into mc_welsh(filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, pos1, pos2) values ('$row1->filename',$row1->utterance_id, $row1->location, '$row1->surface', '$row2->surface', '$row1->auto', '$row2->auto', '$row1->langid', '$row2->langid', 'n', 'adj')");
			
			echo $row1->utterance_id.",".$row1->location."; ".$row1->surface." + ". $row2->surface." - ".$row1->auto." + ".$row2->auto."\n";
		}
	}
    
    unset($myloc);
}

echo "Adjective+Noun\n";
$sql1=query("select * from $words where auto~'\\\.N\\\.' order by utterance_id, location");
while ($row1=pg_fetch_object($sql1))
{  
    $sql2=query("select * from $words where utterance_id=$row1->utterance_id and location=$row1->location - 1;
");
	while ($row2=pg_fetch_object($sql2))
	{
		if (preg_match("/\.ADJ\.(?!POSS)/", $row2->auto))
		{
			$sql_na=query("insert into mc_welsh(filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, pos1, pos2) values ('$row1->filename',$row1->utterance_id, $row1->location, '$row2->surface', '$row1->surface', '$row2->auto', '$row1->auto', '$row2->langid', '$row1->langid', 'adj', 'n')");
			
			echo $row1->utterance_id.",".$row1->location."; ".$row2->surface." + ". $row1->surface." - ". $row2->auto." + ".$row1->auto."\n";
		}
	}  
    unset($myloc);   
}

//fclose($fp);

?>