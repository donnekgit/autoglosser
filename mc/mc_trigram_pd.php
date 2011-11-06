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

// Setup stuff: 
$subset=$_SERVER['argv'][2];
$mctable="mc_".$subset;

// Housekeeping stuff:
if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Pick out the target word-type across the whole corpus...
$sql1=query("select * from $words where auto~'PRON\\.1S'");  // <----- The target word-type is a first-singular pronoun (PRON.1S).
while ($row1=pg_fetch_object($sql1))  // Get all of them, and then loop through each one to find the words preceding them ...
{
	// Specify relative locations, to select words before the target word-type ...
	$before=$row1->location - 1;  // The location one slot back.
	$before2=$row1->location - 2;  // The location two slots back.
	
	// Use these relative locations to run additional queries picking out those words ...
    $sql2=query("select * from $words where utterance_id=$row1->utterance_id and location=$before"); // <----- Get the previous word.
	while ($row2=pg_fetch_object($sql2))
	{
		if (preg_match("/\.N\./", $row2->auto))  // <----- The previous word should be a noun (N).
		{
			$surface2=pg_escape_string($row2->surface);  // <----- Get the surface, autogloss and language tag.
			$auto2=$row2->auto;
			$langid2=$row2->langid;
			
			// Write the target and the previous words into the subset table
			$sql_a1=query("insert into $mctable(filename, utterance_id, location, surface1, surface2, auto1, auto2, langid1, langid2, use) values ('$row1->filename',$row1->utterance_id, $row1->location, '$row1->surface', '$surface2', '$row1->auto', '$auto2', '$row1->langid', '$langid2', '')");
		}
	}
	
	$sql4=query("select * from $words where utterance_id=$row1->utterance_id and location=$before2"); // <----- Get the previous-but-one word.
	while ($row4=pg_fetch_object($sql4))
	{  // No conditions on the word-type this time (though you could add some here if you needed to).
		$surface4=pg_escape_string($row4->surface);  // <----- Get the surface, autogloss and language tag.
		$auto4=$row4->auto;
		$langid4=$row4->langid;
		
		// Write the last-but-one word into the subset table
		$sql_a2=query("update $mctable set surface3='$surface4', auto3='$auto4', langid3='$langid4' where filename='$row1->filename' and utterance_id=$row1->utterance_id and location=$row1->location");
	}

	// Give some feedback from the script, so that we know it's actually doing something.
	echo $row1->filename." - ".$row1->utterance_id.",".$row1->location.": ".$row1->surface."\n";
	
	// Flush the variables so that we don't get old data.
	unset($surface2, $auto2, $langid2, $surface4, $auto4, $langid4);

}

?>
