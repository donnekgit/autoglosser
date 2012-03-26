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

// This file writes out the $words table in CLAN .cha format.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$fp = fopen("outputs/".$filename."/".$filename."_tagless.txt", "w") or die("Can't create the file");
$fp = fopen("miamitrans/fraibet/".$filename."_tagless.txt", "w") or die("Can't create the file");

// Write out the file contents.
$sql_s="select * from $utterances order by utterance_id";
$result_s=pg_query($db_handle,$sql_s) or die("Can't get the items");
while ($row_s=pg_fetch_object($result_s))
{
    $u=$row_s->utterance_id;
	$surface=$row_s->surface;
	$speech=$row_s->speaker.":\t".$surface."\n";
    fwrite($fp, $speech);

	if (isset($row_s->eng))
    {
        //$eng="$u\t\n\n";  # for untranslated files (rewrites vvv as blank)
		$eng="$u:\t".$row_s->eng."\n\n";  # for translated files (retains translation)
        fwrite($fp, $eng); 
    }

    unset($speech, $gls, $eng, $mor, $comment, $auto);
}

fclose($fp);

?>