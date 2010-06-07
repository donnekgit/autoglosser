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
//Output file: $filename_autoglossed.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_autoglossed.txt", "w") or die("Can't create the file");

$sql_u="select * from $utterances order by utterance_id";
$result_u=pg_query($db_handle,$sql_u) or die("Can't get the items");
while ($row_u=pg_fetch_object($result_u))
{
	// get the items for each utterance
	$sql="select * from $words w, $cgfinished f where w.utterance_id=$row_u->utterance_id and w.utterance_id=f.utterance_id and w.location=f.location order by w.location";
	$result=pg_query($db_handle,$sql) or die("Can't get the items");
	while ($row=pg_fetch_object($result))
	{
		//$speaker=$row->speaker;
		//$mainlang.=$row->mainlang." ";
		//$mor.=$row->mor." ";
		//$agloss=preg_replace('/\^$/','',$row->gloss);
		$gloss.=$row->gloss." ";
		//$gloss.=$agloss." // ";
		$agloss=preg_replace('/\^$/','',$row->tags);
		$autogloss.=$agloss." ";
	}

	// write out the utterance
	$u=$row_u->utterance_id;

	//$speech="(".$u."a) *".$speaker.": ".$mainlang."\n";
	$speech="(".$u."a) *".$row_u->speaker.": ".$row_u->mainlang."\n";
	fwrite($fp, $speech);

	/*
	$wmor="(".$u."b) %mor: ".$mor;
	$wmor=trim($wmor)."\n";
	fwrite($fp, $wmor);
	*/

	// Uncomment if there is a manual gloss tier in the file
	//$wgloss="(".$u."b) %gls: ".$gloss;
	//$wgloss=trim($wgloss)."\n";
	//fwrite($fp, $wgloss);

	$wautogloss="(".$u."c) %aut: ".$autogloss;
	$wautogloss=trim($wautogloss)."\n";
	fwrite($fp, $wautogloss);
	fwrite($fp, "\n");

	echo $speech;
	//echo $wmor;
	//echo $wgloss; // Uncomment if there is a manual gloss tier in the file
	echo $wautogloss;
	echo "\n";

	unset($speaker, $mainlang, $mor, $gloss, $autogloss, $speech, $wmor, $wgloss, $wautogloss);
}

fclose($fp);

?>