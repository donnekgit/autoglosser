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

//Output table: $filename_cgfinished

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

echo "*\n*\nCreating the $cgfinished table\n*\n*\n";
include("create_cgfinished.php");

$lines=file("outputs/".$filename."/".$filename."_cg_applied.txt");  // Open input file.
//$lines=file("testwriteseg.txt");  // Open input file.
     
foreach ($lines as $line_num => $line)
{
    if (preg_match("/^\"</", $line))
    {
        preg_match("/<(?P<surface>.*)>/", $line, $quote);  // Get the surface form.
        $surface=$quote[surface];
        echo $surface."\n";
    }
    elseif (preg_match("/^\t\"/", $line))  // Lines with the lexeme (lemma).
    {
        preg_match("/{(?P<utt>\d+),(?P<loc>\d+)}/", $line, $place);  // Get the place (utterance, location).
        $utt=$place[utt];
        $loc=$place[loc];
        //echo $utt.",".$loc."\n";

        preg_match("/\[(?P<langid>\w\w)\]/", $line, $language);  // Get the language..
        $langid=$language[langid];
        //echo $langid."\n";

        preg_match("/\[(?P<dictid>\d+)\]/", $line, $dict);  // Get the dictionary entry by id.
        $dictid=$dict[dictid];
        //echo $dictid."\n";

        preg_match("/\+ (?P<extras>.+)$/", $line, $extra);  // Get any clitics.
        $extras=$extra[extras];
        //echo $extras."\n";

		preg_match("/\] (?P<subtags>.+) :/", $line, $subtag);  // Get any rewritten (substituted) tags as one string
        $subtags=$subtag[subtags];
        //echo $subtags."\n";

		preg_match("/# (?P<segs>.+)$/", $line, $seg);  // Get any segmentations and accompanying POS rewrites.
        $segs=$seg[segs];
        //echo $segs."\n";

		// This code now needs to revert from the "copy everything out of the dictionary" mode back towards the original "copy what the CG has given us"!  Although the former allows a nice table to be built, it cannot handle the output of CG substitution rules, where the POS in the dicitonary entry may get changed to another.
        if (isset($dictid) and $dictid!=0)  // If there was a dictionary entry, and the dictionary is not the zero-language one, look it up and copy the tags into $cgfinished.
        {
			//if ($langid=='en')  // Replace the pos, gender, number, tense entries in enlist with the rewritten segmented entry.
			//{
				echo $utt." - ".$loc." - ".$langid." - ".$dictid." - ".$subtags." - ".$segs."\n";
				$sql_f="select * from ".$langid."list where id=$dictid";
				$result_f=pg_query($db_handle,$sql_f) or die("Can't insert the items");
				while ($row_f=pg_fetch_object($result_f))
				{
					$row_f->lemma=pg_escape_string($row_f->lemma);
					$row_f->enlemma=pg_escape_string($row_f->enlemma);
					$subtags=preg_replace("/ /", ".", $subtags);  // replace any spaces in $subtags with a period
					//$sql_u="insert into $cgfinished(utterance_id, location, lemma, enlemma, pos, gender, number, tense, notes, extra) values ('$utt', '$loc', '$row_f->lemma', '$row_f->enlemma', '$row_f->pos', '$row_f->gender', '$row_f->number', '$row_f->tense', '$row_f->notes', '$segs')";
					$sql_u="insert into $cgfinished(utterance_id, location, lemma, enlemma, pos, notes, extra) values ('$utt', '$loc', '$row_f->lemma', '$row_f->enlemma', '$subtags', '$row_f->notes', '$segs')";
					$result_u=pg_query($db_handle,$sql_u) or die("Can't insert the items");
				}
/*
			}
			else
			{
				echo $utt." - ".$loc." - ".$langid." - ".$dictid." - ".$extras."\n";
				$sql_f="select * from ".$langid."list where id=$dictid";
				$result_f=pg_query($db_handle,$sql_f) or die("Can't insert the items");
				while ($row_f=pg_fetch_object($result_f))
				{
					$row_f->lemma=pg_escape_string($row_f->lemma);
					$row_f->enlemma=pg_escape_string($row_f->enlemma);
					$sql_u="insert into $cgfinished(utterance_id, location, lemma, enlemma, pos, gender, number, tense, notes, extra) values ('$utt', '$loc', '$row_f->lemma', '$row_f->enlemma', '$row_f->pos', '$row_f->gender', '$row_f->number', '$row_f->tense', '$row_f->notes', '$extras')";
					$result_u=pg_query($db_handle,$sql_u) or die("Can't insert the items");
				}
			}
*/
        }
        else  // If there was no dictionary entry, write the surface form.
        {
			$upos=(preg_match("/^[A-Z]/", $surface)) ? "m" : "u";
			echo $utt." - ".$loc." - ".$langid." - ".$dictid." - ".$upos."\n";
            $surface=pg_escape_string($surface);  // To handle apostrophes in the entry.
            $sql_u="insert into $cgfinished (utterance_id, location, lemma, pos) values('$utt', '$loc', '$surface', '$upos')";
            // Added u(nknown) to allow cognate work to proceed, and it will help anyway in focussing on unknown words.
            $result_u=pg_query($db_handle,$sql_u) or die("Can't insert the items");
        }
		echo "\n=========\n";
    }
	//unset($surface, $utt, $loc, $langid, $dictid, $extras, $segs);  // Doesn't seem to be required, and activating it seems to cause names to be listed as unknowns.  Further checking required.
}

?>
