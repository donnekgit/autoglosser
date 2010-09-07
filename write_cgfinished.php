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
     
foreach ($lines as $line_num => $line)
{
    if (preg_match("/^\t\"/", $line))  // We only need the lines with the lexeme.
    {
        preg_match("/{(?P<utt>\d+),(?P<loc>\d+)}/", $line, $place);  // Get the place (utterance, location).
        $utt=$place[utt];
//         echo $utt."\n";
        $loc=$place[loc];
        echo $utt.",".$loc."\n";

        preg_match("/\[(?P<dictid>\d+)\]/", $line, $dict);  // Get the dictionary entry by id.
        $dictid=$dict[dictid];
//         echo $dictid."\n";

        preg_match("/\+ (?P<clitics>.+)$/", $line, $enclitic);  // Get any clitics.
        $clitics=$enclitic[clitics];
//         echo $clitics."\n";

        if (isset($dictid))  // If there was a dictionary entry, look it up and copy the tags into $cgfinished
        {
            $sql_f="select * from eslist where id=$dictid";
            $result_f=pg_query($db_handle,$sql_f) or die("Can't insert the items");
            while ($row_f=pg_fetch_object($result_f))
            {
                $sql_u="insert into $cgfinished(utterance_id, location, lemma, enlemma, pos, gender, number, tense, notes, clitics) values ('$utt', '$loc', '$row_f->lemma', '$row_f->enlemma', '$row_f->pos', '$row_f->gender', '$row_f->number', '$row_f->tense', '$row_f->notes', '$clitics')";
                $result_u=pg_query($db_handle,$sql_u) or die("Can't insert the items");
            }
        }
        else  // If there was no dictionary entry, mark it as unknown.
        {
            $sql_u="insert into $cgfinished (utterance_id, location, lemma) values('$utt', '$loc', 'unk')";
            $result_u=pg_query($db_handle,$sql_u) or die("Can't insert the items");
        }
    }
}

?>
