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

// This file creates a new table of mixed-language entries from the mc_siarad, mc_patagonia or mc_miami tables, and then writes them out with full context detail. The relevant corpus has to be specified as the first argument, eg php mc_context.php patagonia.

$corpus=$_SERVER['argv'][1];
$mctable="mc_".$corpus;
$mcout="mc_n_adj_".$corpus;

include("includes/fns.php");
include("/opt/autoglosser/config.php");
    
// The following probably needs to be split out to a separate file, because if you don't remember to comment it it overwrites the table ...
//drop_existing_table($mcout);
//$sql0=query("create table $mcout as select * from $mctable where langid1!=langid2 and langid1!~'&' and langid2!~'&' and auto1!~'ADJ\\\.POSS' and auto2!~'ADJ\\\.POSS' and auto1!~'ADJ\\\.DEM' and auto2!~'ADJ\\\.DEM' order by surface1, surface2");

$fp = fopen("mc/mc_output/n_adj_".$corpus.".txt", "w") or die("Can't create the file");

$line="Mixed-language noun/adjective phrases in ".ucfirst($corpus)."\n\n";
echo $line."\n";
fwrite($fp, $line);

$i=1;

$sql1=query("select * from $mcout where use is null or use='' order by surface1, surface2");
//$sql1=query("select * from mc_n_adj_siarad where use='t' order by surface1, surface2");
while ($row1=pg_fetch_object($sql1))
{
	fwrite($fp, "\n");
		
	$hit=$row1->surface1." ".$row1->surface2;
	$hit=$i.": ".$hit;
	fwrite($fp, $hit);
	
	$mcfile=$row1->filename."_cgutterances";
    $sql2=query("select * from $mcfile where utterance_id=$row1->utterance_id");
	while ($row2=pg_fetch_object($sql2))
	{
		$source=" (".$row1->filename.", ".$row1->utterance_id.")";
		fwrite($fp, $source);
		
		fwrite($fp, "\n");
		
		$wsurf=$row2->surface;
		fwrite($fp, $wsurf);
		echo $wsurf."\n";
		
		fwrite($fp, "\n");

		$weng=$row2->eng;
		fwrite($fp, $weng);
		echo $weng."\n";
		
		fwrite($fp, "\n\n");
	} 
	
	$i++;
}

fclose($fp);

?>
