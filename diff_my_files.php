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

// This script diffs two files, then selects the changed lines and presents them in the terminal and in a LaTeX document, with the changes highlighted in colour.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

include("includes/finediff.php");

// We need some mechanism (in apply_traced_cg.php?) to save the current autoglossed.txt as autoglossed_old.txt.
$old_file="outputs/$filename/".$filename."_autoglossed.old";
$new_file="outputs/$filename/".$filename."_autoglossed.txt";

$fp=fopen("outputs/$filename/".$filename."_diff.tex", "w") or die("Can't create the file");
$header=file_get_contents('cognates/tex_header.tex');
fwrite($fp, "$header");

exec("diff $old_file $new_file", $diff_output);  // Diff the two documents.
foreach ($diff_output as $diff_line)  // Store all diff info in the $thisline array.
{
	if (preg_match("/^[0-9]+/", $diff_line, $lines))  // Collect the line number.
	{
		$lineno=$lines[0];
		$thisline[$lineno][]=$lines[0];
		unset($lines);
	}
	if (preg_match("/^</", $diff_line))  // Collect the old text where a change was made.
	{
		//$old=$diff_line;
		$thisline[$lineno][]=$diff_line;
		unset($diff_line);
	}
	if (preg_match("/^>/", $diff_line))  // Collect the new text reflecting the change.
	{
		//$new=$diff_line;
		$thisline[$lineno][]=$diff_line;
		unset($diff_line);
	}
}

foreach ($thisline as $thisdiff)  // Loop through the $thisline array, picking out the lines highlighted by diff and feeding them to FineDiff.
{
	echo "\033[1m".$thisdiff[0]."\033[0m\n";  // Write the line number in the old text.
	fwrite($fp, "\\textbf{".$thisdiff[0]."} \\\\ \n");

	$prevline=$thisdiff[0]-1;
	$surface=exec("sed -n ".$prevline."p devstuff/pat5_a.txt");  // Get the utterance line before the autogloss line.
	list($surface, $timing)=explode('', $surface);  // Remove the timing info.
	$surface=substr($surface, 0, -1);
	
	echo $surface."\n";  // Write the utterance line.
	fwrite($fp, "\\textit{".tex_surface($surface)."} \\\\ \n");

	$old_text=substr($thisdiff[1], 3);  // Remove the "< " from the old text.
	$new_text=substr($thisdiff[2], 3);  // Remove the "> " from the new text.

	$diff = new FineDiff($old_text, $new_text, FineDiff::$wordGranularity);  
	// "word" can be replaced by character, sentence and paragraph to give different levels of granularity.

	// Render to HTML:
	$rendered_diff = $diff->renderDiffToHTML();
	//echo $rendered_diff."\n";

	// Edit the HTML to view in a Bash shell:
	$coloured_diff=$rendered_diff;
	$coloured_diff=preg_replace("/<del>/", "\033[1;37;41m", $coloured_diff);  // Set white text, red background.
	$coloured_diff=preg_replace("/<\\/del>/", "\033[0m", $coloured_diff);  // Reset to default.
	$coloured_diff=preg_replace("/<ins>/", "\033[30;42m", $coloured_diff);  // Set black text, green background.
	$coloured_diff=preg_replace("/<\\/ins>/", "\033[0m", $coloured_diff);  // Reset to default.
	$coloured_diff=preg_replace("/ /", " / ", $coloured_diff);  // Insert a slash between lexeme+POS groups.
	echo $coloured_diff."\n\n";

	// Edit the HTML to view in LaTeX:
	$tex_diff=$rendered_diff;
	$tex_diff=preg_replace("/<del>/", "\\colorbox{redbg}{\color{Red}", $tex_diff);  // Set red text, red background.
	$tex_diff=preg_replace("/<\\/del>/", "}", $tex_diff);  // Reset to default.
	$tex_diff=preg_replace("/<ins>/", "\\colorbox{greenbg}{\color{Green}", $tex_diff);  // Set green text, green background.
	$tex_diff=preg_replace("/<\\/ins>/", "}", $tex_diff);  // Reset to default.
	$tex_diff=preg_replace("/ /", " / ", $tex_diff);  // Insert a slash between lexeme+POS groups.

	$tex_diff=tex_surface($tex_diff);
	fwrite($fp, $tex_diff." \\bigskip \\\\ \n\n");
}

$footer=file_get_contents('cognates/tex_footer.tex');
fwrite($fp, "$footer");

fclose($fp);

// Use pdflatex to generate a pdf file.
exec("pdflatex -interaction=nonstopmode -output-directory=outputs/$filename outputs/$filename/".$filename."_diff.tex 2>&1");

?>