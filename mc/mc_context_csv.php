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

// This file writes out mixed-language entries with full context detail to a csv file, which can be opened in a spreadsheet. The relevant subset has to be specified as the first argument, eg php mc_context.php <patagonia>.

$subset=$_SERVER['argv'][1];
//$mcout="mc_n_adj_".$subset;
$mcout="mc_mixed_".$subset;

include("includes/fns.php");
include("/opt/autoglosser/config.php");
    
$fp = fopen("mc/mc_output/$mcout.csv", "w") or die("Can't create the file");

$i=1;

//$sql1=query("select * from $mcout where use is null or use='' order by surface1, surface2");
//$sql1=query("select * from mc_n_adj_siarad where use='t' order by surface1, surface2");
//$sql1=query("select * from $mcout where langid1='cym' and langid2='cym&eng' order by surface2");
//$sql1=query("select * from $mcout where langid2!~'&' order by langid1, langid2");
$sql1=query("select * from $mcout order by filename, utterance_id, location");
while ($row1=pg_fetch_object($sql1))
{
	//$hit=tex_surface($row1->surface1." ".$row1->surface2);
	$hit="\"".$i."\",\"".$row1->surface1."\",\"".$row1->surface2."\",\"".$row1->surface3."\",\"".$row1->langid1."\",\"".$row1->langid2."\",\"".$row1->langid3."\",";
	fwrite($fp, $hit);
	
	$mcfile=$row1->filename."_cgutterances";
    $sql2=query("select * from $mcfile where utterance_id=$row1->utterance_id");
	while ($row2=pg_fetch_object($sql2))
	{
		$source="\"".$row1->filename."\",\"".$row1->utterance_id."\",";
		fwrite($fp, $source);
		
		$row2->surface=preg_replace("/\"/", "''", $row2->surface);
		$wsurf="\"".$row2->surface."\"";
		fwrite($fp, $wsurf);
		
		fwrite($fp, "\n");
		
// 		$weng="\\textit{".tex_surface($row2->eng)."}";
// 		fwrite($fp, $weng);
// 		echo $weng."\n";
	} 
	
	$i++;
}

fclose($fp);

?>
