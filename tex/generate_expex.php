<?php

/*
Copyright Kevin Donnelly 2010.

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

// This file writes out the $words table in a csv file that can then be opened in a spreadsheet with the surface and autogloss in parallel cells.  This may make it easier to check for glossing accuracy.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename.".tex", "w") or die("Can't create the file");

$lines=file("tex/tex_header.tex");  // Open header file.
foreach ($lines as $line)
{
	fwrite($fp, $line);
}

$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
	$precode=$row_s->precode;
	echo $precode."\n";
	
    $sql_w="select * from $words where utterance_id=$row_s->utterance_id order by location";
	$result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
	while ($row_w=pg_fetch_object($result_w))
	{
		$row_w->surface=tex_surface($row_w->surface);  // comment out _ and % to keep LaTeX happy.

		if ($row_w->langid=="eng" and $precode !="eng")
		{
			$row_w->surface=$row_w->surface."$^E$";
		}
		elseif ($row_w->langid=="eng" and $precode=="eng")
		{
			$row_w->surface=$row_w->surface;
		}
		elseif ($row_w->langid =="spa" and $precode=="eng")
		{
			$row_w->surface=$row_w->surface."$^S$";
		}
		elseif ($row_w->langid=="spa&eng")
		{
			$row_w->surface=$row_w->surface."$^E_S$";
		}

		$surface.=$row_w->surface." ";

		$row_w->auto=tex_auto($row_w->auto);
		//$row_w->auto=tex_pos_colour($row_w->auto);  // Uncomment to get colour-coded POS tags.
		$auto.=$row_w->auto." ";
	}

	$begingl="\ex\n\begingl[lingstyle=gergl]\n";
	fwrite($fp, $begingl);

	$precode=($precode=="") ? "": "[-".$precode."]";

	$wsurface="\gla ".$row_s->speaker.": ".$precode." ".$surface." //\n";
	echo $wsurface."\n";
	fwrite($fp, $wsurface);

	$wauto="\glb \%aut ".$precode." ".$auto." //\n";
	echo $wauto."\n";
	fwrite($fp, $wauto);

	$weng="\glft ".$row_s->eng." //\n";
	echo $weng."\n";
	fwrite($fp, $weng);

	$endgl="\endgl\n\\xe\n";
	fwrite($fp, $endgl);

	fwrite($fp, "\n");

	unset($surface, $auto, $mor, $wsurface, $wauto, $wmor, $weng, $precode);
}

$lines=file("tex/tex_footer.tex");  // Open footer file.
foreach ($lines as $line)
{
	fwrite($fp, $line);
}

fclose($fp);

?>
















