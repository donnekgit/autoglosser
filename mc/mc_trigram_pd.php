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

// This file collects examples of trigrams.  The table holding the imported file should be the first argument, and a relevant name for the subset of material should be specified as the second argument, eg php mc_trigram_pd.php <table> <subset>.

// This is best run from a shell script: mc/sh_run_mc.php.

// Should also consider adding the speaker name to the list of data collected.

// Setup stuff: 
$subset=$_SERVER['argv'][2];
$mctable=$subset;

// Housekeeping stuff:
if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Pick out the target word-type across the whole corpus...
$sql1=query("select * from $words where surface~'^w$'");  // The target word-type is a third-singular pronoun (PRON.3S).
while ($row1=pg_fetch_object($sql1))  // Get all of them, and then loop through each one to find the words preceding them ...
{
	// Write the target word into the subset table
	$sql_=query("insert into $mctable(filename, utterance_id, location, surface_target, auto_target, langid_target, use) values ('$row1->filename',$row1->utterance_id, $row1->location, '$row1->surface', '$row1->auto', '$row1->langid', '')");


	// Specify relative locations, to select words before the target word-type ...
	$before2=$row1->location - 2;  // The location two slots back.
	$before=$row1->location - 1;  // The location one slot back.
	$after=$row1->location + 1;  // The location one slot forward.
	$after2=$row1->location + 2;  // The location two slots forward.
	

	// Use these relative locations to run additional queries picking out those words ...
	
	$sql_before2=query("select * from $words where utterance_id=$row1->utterance_id and location=$before2"); // Get the previous-but-one word.
	while ($row_before2=pg_fetch_object($sql_before2))
	{
		$surface_before2=pg_escape_string($row_before2->surface);  // <----- Get the surface, autogloss and language tag.
		$auto_before2=pg_escape_string($row_before2->auto);
		$langid_before2=$row_before2->langid;
		
		// Write the last-but-one word into the subset table
		$sql_a2=query("update $mctable set surface_before2='$surface_before2', auto_before2='$auto_before2', langid_before2='$langid_before2' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location");
	}

    $sql_before=query("select * from $words where utterance_id=$row1->utterance_id and location=$before"); // Get the previous word.
	while ($row_before=pg_fetch_object($sql_before))
	{
		$surface_before=pg_escape_string($row_before->surface);  // Get the surface, autogloss and language tag.
		$auto_before=pg_escape_string($row_before->auto);
		$langid_before=$row_before->langid;
		
		// Write the previous word into the subset table
		$sql_a2=query("update $mctable set surface_before='$surface_before', auto_before='$auto_before', langid_before='$langid_before' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location");
	}
	
	$sql_after=query("select * from $words where utterance_id=$row1->utterance_id and location=$after"); // Get the following word.
	while ($row_after=pg_fetch_object($sql_after))
	{
		$surface_after=pg_escape_string($row_after->surface);  // <----- Get the surface, autogloss and language tag.
		$auto_after=pg_escape_string($row_after->auto);
		$langid_after=$row_after->langid;
		
		// Write the previous word into the subset table
		$sql_a2=query("update $mctable set surface_after='$surface_after', auto_after='$auto_after', langid_after='$langid_after' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location");
	}
	
	$sql_after2=query("select * from $words where utterance_id=$row1->utterance_id and location=$after2"); // Get the previous-but-one word.
	while ($row_after2=pg_fetch_object($sql_after2))
	{
		$surface_after2=pg_escape_string($row_after2->surface);  // <----- Get the surface, autogloss and language tag.
		$auto_after2=pg_escape_string($row_after2->auto);
		$langid_after2=$row_after2->langid;
		
		// Write the last-but-one word into the subset table
		$sql_a2=query("update $mctable set surface_after2='$surface_after2', auto_after2='$auto_after2', langid_after2='$langid_after2' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location");
	}

	// Give some feedback from the script, so that we know it's actually doing something.
	echo $row1->filename." - ".$row1->utterance_id.",".$row1->location.": ".$row1->surface."\n";
	
	// Flush the variables so that we don't get old data.
	unset($surface_before2, $auto_before2, $langid_before2, $surface_before, $auto_before, $langid_before, $surface_after, $auto_after, $langid_after, $surface_after2, $auto_after2, $langid_after2);

}

?>
