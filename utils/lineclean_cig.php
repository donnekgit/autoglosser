<?php

// This script cleans the surface line in CIG1/CIG2 for use in Eurfa as a citation source.
// Run utils/sh_pg_stuff (with the relevant section uncommented) first to get the corpus.

// Add a welsh column first, then create the speaker table by running get_cig_speakers.php.

// Then, to bring in the type of speaker, add a type column and run:
// update corpcig1 c set type=(select type from cig1_sp s where s.filename=c.filename and s.speaker=c.speaker);

include("includes/fns.php");
include("/opt/cig1/config.php");

$sql=query("select filename, utterance_id, surface from corpcig1;");
while ($row=pg_fetch_object($sql))
{
	echo $row->surface."\n";
	$welsh=pg_escape_string(lineclean_corpus($row->surface));
	$sql_i=query("update corpcig1 set welsh='$welsh' where filename='$row->filename' and utterance_id=$row->utterance_id;");
}


?>