<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// This file writes out the $words table in a csv file that can then be opened in a spreadsheet with the surface and autogloss in parallel cells.  This may make it easier to check for glossing accuracy.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}
$capfile=ucfirst($filename);

if (empty($mflg))
{
	$mflg="cym";  // If calling this script stand-alone, specify the default language here.
}

$fp = fopen("outputs/".$filename."/".$filename.".tex", "w") or die("Can't create the file");
//$fp = fopen("tex/new_expex/$filename.tex", "w") or die("Can't create the file");  // For testing.

$lines=file("tex/tex_header.tex");  // Open header file containing LaTeX markup to set up the document.
foreach ($lines as $line)
{
	if (preg_match("/filename/", $line))  // replace the holder in the TeX file with the name of the conversation
	{
		$line=preg_replace("/filename/", "$capfile", $line);
	}
	else
	{
		$line=$line;
	}
	//echo $line."\n";
	fwrite($fp, $line);
}

include("tex/get_details.php");  // Write a preamble to the file by using information from the chat file header.

$surface='';
$auto='';
// An empty variable has to be set up here, otherwise the concatenation $surface.=$row_w->surface." "; below will result in the first line of the text having a preceding dot.  A similar point applies to $auto, which will otherwise attach the last gloss in the file to the first item.

$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
	$precode=$row_s->precode;
	$precode=($precode=="") ? "" : "[- ".$precode."] ";
	echo $precode."\n";
	
	$chat=$row_s->surface;
	if (preg_match("/^(?P<link>\+[<^\+\",])/", $chat, $linker))  // Keep continuation markers at the beginning of the line.
	{
		$chat=preg_replace("/^(\+[<^\+\",] )/", "", $chat);
		$chat=$row_s->speaker.":\t".$linker['link']." ".$precode.$chat;
	}
	else
	{
		$chat=$row_s->speaker.":\t".$precode.$chat;
	}

    $sql_w="select * from $words where utterance_id=$row_s->utterance_id and langid!='999' order by location";
	$result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
	$mor = $gls = $auto = $surface = ''; //Set these so they can later be referred to via .=
	while ($row_w=pg_fetch_object($result_w))
	{
		$row_w->surface=tex_surface($row_w->surface);  // comment out _ and % to keep LaTeX happy.

		if ($row_w->langid==$mflg and $precode =="")
		{
			$row_w->surface=$row_w->surface;
		}
		elseif ($row_w->langid=="eng" and $precode !="eng")
		{
			$row_w->surface=$row_w->surface."$^{E}$";
		}
		elseif ($row_w->langid =="spa" and $precode!="spa")
		{
			$row_w->surface=$row_w->surface."$^{S}$";
		}
		elseif ($row_w->langid =="cym" and $precode!="cym")
		{
			$row_w->surface=$row_w->surface."$^{C}$";
		}
		elseif ($row_w->langid=="cym&eng")
		{
			$row_w->surface=$row_w->surface."$^{C}_{E}$";
		}
		elseif ($row_w->langid=="eng&spa")
		{
			$row_w->surface=$row_w->surface."$^{S}_{E}$";
		}
		elseif ($row_w->langid=="cym&spa") 
		{
			$row_w->surface=$row_w->surface."$^{C}_{S}$";
		}
		elseif ($row_w->langid=="spa+cym") 
		{
			$row_w->surface=$row_w->surface."$^{S+}_{C}$";
		}
		elseif ($row_w->langid=="eng+cym") 
		{
			$row_w->surface=$row_w->surface."$^{E+}_{C}$";
		}

		$surface.=$row_w->surface." ";  // Note that you  need to set up an empty $surface first - see above.
		
		$row_w->auto=tex_auto(isset($row_w->auto)?$row_w->auto:'');
		//$row_w->auto=tex_pos_colour($row_w->auto);  // Uncomment to get colour-coded POS tags.
		$auto.=$row_w->auto." "; // Note that you  need to set up an empty $auto first - see above.

		$row_w->gls=tex_auto(isset($row_w->gls)?$row_w->gls:'');
		$gls.=$row_w->gls." ";
		
		$row_w->mor=tex_mor(isset($row_w->mor)?$row_w->mor:'');
		$mor.=$row_w->mor." ";
	}

	$begingl="\ex\n\begingl\n";
	fwrite($fp, $begingl);

	$wchat="\glpre ".tex_surface($chat)." //\n";
	echo $wchat."\n";
	fwrite($fp, $wchat);

	if ( !empty($surface) )  // Provided there is verbal content in the line ...
	{
		$wsurface="\gla ".$row_s->speaker.": ".$surface." //\n";
		echo $wsurface."\n";
		fwrite($fp, $wsurface);
		
		$wauto="\glb \\textbf{aut:} ".$auto." //\n";  // Autogloss tier.
		echo $wauto."\n";
		fwrite($fp, $wauto);
/*
		$wgls="\glc \\textbf{gls:} ".$gls." //\n";  // Human gloss tier.
		echo $wgls."\n";
		fwrite($fp, $wgls);
*/
/*
		$wmor="\glb \%mor ".$mor." //\n";  // MOR/POST tier.
		echo $wmor."\n";
		fwrite($fp, $wmor);
*/

		$weng="\glft ".tex_surface($row_s->eng)." //\n";  // English tier.
		echo $weng."\n";
		fwrite($fp, $weng);
		
		$endgl="\endgl\n\\xe\n";
		fwrite($fp, $endgl);
	}
	else  // ... if not, just end the example.
	{
		$endgl="\endgl\n\\xe\n";
		fwrite($fp, $endgl);
	}

	fwrite($fp, "\n");

	unset($chat, $surface, $auto, $gls, $mor, $wchat, $wsurface, $wauto, $wgls, $wmor, $weng, $precode);
}

$lines=file("tex/tex_footer.tex");  // Open footer file.
foreach ($lines as $line)
{
	fwrite($fp, $line);
}

fclose($fp);

?>
