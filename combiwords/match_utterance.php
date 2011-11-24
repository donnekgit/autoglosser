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

// This script gathers all utterances containing the desired pattern and prints them out to give a concordance for each word in the corpus.  This version only collects words in Patagonia beginning with ta-.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$corpus="pat";
$combiwords="combiwords_".$corpus;

$string="^ta";

$outfile="ta.tex";
$outheader="ta- words";

$fp = fopen("combiwords/$outfile", "w") or die("Can't create the file");

$lines=file("cognates/tex_header.tex");  // Open header file containing LaTeX markup to set up the document.
foreach ($lines as $line)
{
	if (preg_match("/filename.cha/", $line))
	{
		//$line=preg_replace("/filename.cha/", "Mixed-language noun+adjective phrases in ".ucfirst($corpus), $line);
		$line=preg_replace("/filename.cha/", $outheader, $line);
	}
	else
	{
		$line=$line;
	}
	//echo $line."\n";
	fwrite($fp, $line);
}

$i=1;
$auto='';

//$sql1=query("(select * from combiwords_pat where surface~'it[ao]s?$' and auto!='name' and auto!~'\\\\.V\\\\.') union (select * from combiwords_mi where surface~'it[ao]s?$' and auto!='name' and auto!~'\\\\.V\\\\.') order by surface, filename, utterance_id, location");
// Collect a combined list from two corpora by using "union" - note that you need to use round brackets.  This collects diminutives in -ito/-ita/-itos/-itas - the V clause is necessary because not all have been marked as dim(inutive), but unfortunately this introduces a few non-dims into the list.

$sql0=query("select surface, langid from $combiwords where surface~'$string' group by surface, langid order by surface, langid");  // Get all the words matching STRING from the index table and order them, so that we can do a numbered set of headings.
while ($row0=pg_fetch_object($sql0))
{
	$headline="\n\\bigskip\\section*{".$i.": ".tex_surface($row0->surface)." \\color{Blue}\\begin{small}(".tex_surface($row0->langid).")\\end{small}\\color{Black}}\n";
	fwrite($fp, $headline);
	$j=1;
	
	$sql1=query("select surface, langid, filename, utterance_id, location, substring(filename from '^.[^0-9]*') as nametext, substring(filename from '[0-9]+')::integer as nameno from $combiwords where surface='$row0->surface' and langid='$row0->langid' order by nametext, nameno, utterance_id, location");  // Get all the instances of that word from the index table ...
	// Use substring to break the filename into two chunks (alphabetic and numeric) and order by those to get natural sorting.  Note the use of ::integer to cast the numeric portion to integers instead of text.
	while ($row1=pg_fetch_object($sql1))
	{
		$sep="\\rule{\linewidth}{0.1mm} \\\\ \n";
		fwrite($fp, $sep);
	
		//echo $hit."\n";

		//$hit="\\textbf{".tex_surface($row1->surface)."}";
		//fwrite($fp, $i.": ".$hit);
		
		$uttfile=$row1->filename."_cgutterances";
		$sql2=query("select * from $uttfile where utterance_id=$row1->utterance_id");  // ... and look up each one in the utterances table to get the surface and english columns.
		while ($row2=pg_fetch_object($sql2))
		{
			$source="$j: ".$row1->filename.", ".$row1->utterance_id."/".$row1->location;
			echo $source."\n";
			fwrite($fp, $source);
			fwrite($fp, "\\\\ \n");
			
			echo $row2->surface."\n";
			$wsurf=tex_surface($row2->surface);
			$wsurf="\\textbf{".lg_superscript($wsurf)."}";
			$wsurf=preg_replace("/($row0->surface)/", "\\color{Red}$1 \\color{Black}", $wsurf);
			// The space after $1 is necessary.  TeX seems to do some funky space-swallowing here, and this is the only way to get the word in red without the following space disappearing.  The drawback is that the language superscript on a highlighted word is also preceded by a space.
			fwrite($fp, $wsurf);
			fwrite($fp, "\\\\ \n");
			
			/*
			// Include the autogloss if desired.
			$wordfile=$row1->filename."_cgwords";
			$sql3=query("select * from $wordfile where utterance_id=$row1->utterance_id order by location");
			while ($row3=pg_fetch_object($sql3))
			{
				$auto.=$row3->auto." ";
			}
			
			$wauto="\\textit{".tex_surface($auto)."}";
			fwrite($fp, $wauto);
			echo $wauto."\n";
				
			fwrite($fp, "\\\\ \n");
			*/
			
			$weng="\\textit{".tex_surface($row2->eng)."}";
			fwrite($fp, $weng);
			//echo $weng."\n";
			fwrite($fp, "\\\\ \n");
			
			$j++;
		} 
		
		unset($auto);
	}

	$i++;
}

$lines=file("cognates/tex_footer.tex");  // Open footer file.
foreach ($lines as $line)
{
	fwrite($fp, $line);
}

fclose($fp);

?>