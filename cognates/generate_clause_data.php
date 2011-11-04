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

// This script uses the cognates markers to calculate clause data re triggers, and then print it out in a LaTeX file.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$fp = fopen("outputs/".$filename."/".$filename."_cognates.tex", "w") or die("Can't create the file");

$lines=file("cognates/tex_header.tex");  // Open header file containing LaTeX markup to set up the document.
foreach ($lines as $line)
{
	if (preg_match("/filename/", $line))  // Replace the holder in the TeX file with the name of the conversation.
	{
		$line=preg_replace("/filename/", "$filename", $line);
	}
	else
	{
		$line=$line;
	}
	echo $line."\n";
	fwrite($fp, $line);
}

$tabopen="\begin{longtable}{p{25mm}p{135mm}}";
fwrite($fp, $tabopen);

$p='';  // Language of the last nonT in the previous clause - passed in on each loop by naming the last nonT in the current clause $p at the end of the loop.

 //where utterance_id>819
$sql1=query("select utterance_id from $words group by utterance_id order by utterance_id");
while ($row1=pg_fetch_object($sql1))
{
	$utt=$row1->utterance_id;
	
	$sql_s=query("select * from $utterances where utterance_id=$utt");
	while ($row_s=pg_fetch_object($sql_s))
	{
		$sep1="\\rule{\linewidth}{0.1mm} & \\rule{\linewidth}{0.1mm} \\\\ \n";
		fwrite($fp, $sep1);
		$wthisutt=$row_s->speaker." (".$utt."): & \\textbf{".lg_superscript(tex_surface($row_s->surface))."} \\\\ \n";
		fwrite($fp, $wthisutt);
		$wthiseng=" & ".tex_surface($row_s->eng)." \\\\ \n";
		fwrite($fp, $wthiseng);
	}
		
	$sql2=query("select clauseno from $words where utterance_id=$utt group by clauseno order by clauseno");
	while ($row2=pg_fetch_object($sql2))
	{
		$clauseno=$row2->clauseno;
		
		$sql3=query("select * from $words where utterance_id=$utt and clauseno=$clauseno and langid!='999' order by location");
		while ($row3=pg_fetch_object($sql3))
		{
			// Mark trigger words in red.
			if (preg_match("/^t[0-9]$/", $row3->cognate))
			{
				$row3->surface="\\textcolor{Red}{".$row3->surface."}";
			}

			// Mark English words in Welsh utterances with a superscript E; mark indeterminate words with a superscript I.
			if ($row3->langid=="cym" and $precode =="")
			{
				$row3->surface=$row3->surface;
			}
			elseif ($row3->langid=="eng" and $precode !="eng")
			{
				$row3->surface=$row3->surface."$^{E}$";
			}
			elseif ($row3->langid=="cym&eng")
			{
				$row3->surface=$row3->surface."$^{I}$";
			}

			$clause.=$row3->surface." ";  // Generate the clause.
			$auto.=$row3->auto." ";  // Generate the gloss.
			$speaker=$row3->speaker;
			$filename=$row3->filename;
			$loc[]=$row3->location;  // Gather locations to give clause beginning and end.
			if (!preg_match("/^t[0-9]$/", $row3->cognate))
			{
				$this_lg[$row3->location]=$row3->langid; // Language array for non-Ts.
				// Get the language of all non-Ts in this clause, keyed to their location in the utterance.
				// The first item will always be the earliest non-T in the clause.
			}
			else
			{
				$t[$row3->location]=$row3->cognate;  // Get the utterance location of all Ts in this clause.  Location array for Ts.
			}
		}
		
		// Location data
		//$minloc=min($loc);  // Get location of clause beginning.
		//$maxloc=max($loc);  // Get location of clause end.
			
		print_r($t);
		//print_r($this_lg);
		$scan=$this_lg;  // Make a copy of $this_lg for forward scanning - we need to drop the first element, and if we use $this_lg it will mess up the other calculations based on it.
		$f=reset($this_lg);  // language of the first non-T in the clause. Get the first element in the array.
		$f_loc=reset(array_keys($this_lg));
				
		if (empty($t))  // If there are no triggers in the clause ...
		{
			//$ann="No T, ";
			echo "Does not contain a T\n";
			if ($p!=$f) // inter-clausal 
			{
				echo "Language switch between p and f!\n";  // ... and there is a language switch
				//echo "noTSwInter\n";
				$noTSwInter++;  // ... increment this counter
				$ann.="\\textcolor{Green}{INTER, }";
			}
			else
			{
				echo "No change from p to f ...\n";  // ... and there is no language switch
				//echo "noTnoSw\n";
				$noTnoSw++;  // ... increment this counter
				$ann.="no-sw, ";
			}
			// intra-clausal
			array_shift2($scan);  // Drop $f from the array without reindexing the other elements.
			$langs=array_flip(array_count_values($scan));  // Count the non-F values (languages) - they are now in key position, so flip them to get a list of languages used in the rest of the clause.
			// NOTE: Couldn't the following be done more simply by using "if in_array($f, $langs) ..." ??
			$pattern=array($f);  // Put F in an array.
			$otherlgs=array_values($langs);  // Put the non-F languages in an array.
			$binkie=array_diff($otherlgs, $pattern);  // Compare the two to see if there is a language in non-F that does not exist in F.
			if (count($binkie)>0)  // If there is ...
			{
				echo "Intra-clausal switch ...\n";
				$noTSwIntra++;  // ... increment this counter
				$ann.="\\textcolor{Blue}{intra}";
			}
		}
		else  // If there are Ts in the clause ...
		{
			$ann="\\textcolor{Red}{With T, }";
			echo "Contains a T\n";
			if ($p!=$f) // inter-clausal
			{
				echo "Language switch between p and f!\n";
				//echo "TSwInter\n";
				$TSwInter++;
				$ann.="\\textcolor{Green}{INTER, }";
			}
			else
			{
				echo "No change from p to f ...\n";
				//echo "TnoSw\n";
				$TnoSw++;
				$ann.="no-sw, ";
			}
			array_shift2($scan);
			$langs=array_flip(array_count_values($scan));
			$pattern=array($f);
			$otherlgs=array_values($langs);
			$binkie=array_diff($otherlgs, $pattern);
			if (count($binkie)>0)
			{
				echo "Intra-clausal switch ...\n";
				$TSwIntra++;
				$ann.="\\textcolor{Blue}{intra}";

			}
		}
		
		$ann=preg_replace("/, }$/", "}", $ann);
		
		//$sep=" & \\rule{\linewidth}{0.1mm} \\\\ \n";
		$sep=" & \\hdashrule[0.5ex]{\linewidth}{1pt}{3mm} \\\\ \n";
		fwrite($fp, $sep);
		
		echo $speaker." (".$utt.", ".$clauseno."): ".$clause."\n";
		//$wspk=$speaker." (".$utt.", ".$clauseno."): \\newline\n";
		$wspk=$clauseno.": \\newline\n";
		$wann="{\scriptsize ".$ann."} & ";
		$wnotes=$wspk.$wann;
		fwrite($fp, $wnotes);
		
		$wclause="\\textbf{".tex_surface($clause)."} \\newline\n";
		fwrite($fp, $wclause);
		
		echo $auto."\n\n";
		$wauto="{\scriptsize ".tex_surface($auto)."} \\\\ \n";
		fwrite($fp, $wauto);
		
		$runningnoT=" & \\textit{{\scriptsize No T, switch, inter-clausal:} $noTSwInter -- {\scriptsize No T, switch, intra-clausal}: $noTSwIntra -- {\scriptsize No T, no switch}: $noTnoSw} \\\\ \n";
		$runningT=" & \\textit{{\scriptsize T, switch, inter-clausal:} $TSwInter -- {\scriptsize T, switch, intra-clausal}: $TSwIntra -- {\scriptsize T, no switch}: $TnoSw} \\\\ \n";
		fwrite($fp, $runningnoT.$runningT);

		$p=end($this_lg);  // Get the last element in the array - the language of the last non-T in the clause.
		$p_loc=end(array_keys($this_lg));
		//$prev_c=$clause;
		//$prev_utt=$utt;
		//$prev_minloc=$minloc;
		//$prev_maxloc=$maxloc;

		unset($clause, $auto, $loc, $t, $f, $this_lg, $ann);
		
	}
}

$tabclose="\end{longtable}";
fwrite($fp, $tabclose);

echo "No T, switch, inter-clausal: ".$noTSwInter."\n";
echo "No T, switch, intra-clausal: ".$noTSwIntra."\n";
echo "No T, no switch: ".$noTnoSw."\n";

echo "T, switch, inter-clausal: ".$TSwInter."\n";
echo "T, switch, intra-clausal: ".$TSwIntra."\n";
echo "T, no switch: ".$TnoSw."\n";


$lines=file("cognates/tex_footer.tex");  // Open footer file.
foreach ($lines as $line)
{
	fwrite($fp, $line);
}

fclose($fp);
	
?>