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

// Creates a csv file giving the words in the utterance on one line of spreadsheet cells, with the glosses aligned below them
//Output table: none
//Output file: $filename_autoglossed.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/siarad/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."_mysyntax.csv", "w") or die("Can't create the file");

$sql_u="select * from ".$filename."_cgutterances order by utterance_id";
$result_u=pg_query($db_handle,$sql_u) or die("Can't get the items");
while ($row_u=pg_fetch_object($result_u))
{
	// get the items for each utterance
	$sql="select * from ".$filename."_cgwords w, ".$filename."_cgfinished f where w.utterance_id=$row_u->utterance_id and w.utterance_id=f.utterance and w.location=f.location order by w.location";
	$result=pg_query($db_handle,$sql) or die("Can't get the items");
	while ($row=pg_fetch_object($result))
	{
		//$speaker=$row->speaker;
		$surface.=$row->surface.",";
		//$mor.=$row->mor." ";
		//$agloss=preg_replace('/\^$/','',$row->gloss);
		$gloss.=$row->gloss." ";
		//$gloss.=$agloss." // ";
		$agloss=preg_replace('/\^$/','',$row->tags);
		$agloss=preg_replace('/(\.CY|\.EN|\.ES)/','',$agloss);
		$agloss=preg_replace('/^.[^\.]*/','',$agloss);
		$agloss=preg_replace('/^\./','',$agloss);
		$autogloss.="\"".$agloss."\",";
	}

	// write out the utterance
	$u=$row_u->utterance_id;

	//$speech="(".$u."a) *".$speaker.": ".$mainlang."\n";
	$speech="(".$u."a) *".$row_u->speaker.": ".$row_u->mainlang."\n";
	//fwrite($fp, $speech);

	/*
	$wmor="(".$u."b) %mor: ".$mor;
	$wmor=trim($wmor)."\n";
	fwrite($fp, $wmor);
	*/

	// Uncomment if there is a manual gloss tier in the file
	//$wgloss="(".$u."b) %gls: ".$gloss;
	//$wgloss=trim($wgloss)."\n";
	//fwrite($fp, $wgloss);

	$wsurface="\"".$u."\",\"".$row_u->speaker."\",".$surface;
	$wsurface=trim($wsurface)."\n";
	//$wsurface=trim($wsurface);
	fwrite($fp, $wsurface);
	//fwrite($fp, "\n");

	$wautogloss="\"aut\",\" \",".$autogloss;
	$wautogloss=trim($wautogloss)."\n";
	fwrite($fp, $wautogloss);
	fwrite($fp, "\n");

	//echo $speech;
	//echo $wmor;
	//echo $wgloss; // Uncomment if there is a manual gloss tier in the file
	echo $wsurface;
	echo $wautogloss;
	echo "\n";

	unset($speaker, $mainlang, $mor, $gloss, $autogloss, $speech, $wmor, $wgloss, $wautogloss, $surface, $wsurface);
}

fclose($fp);

?>