<?php

// This file writes out the headers of the cha file so that they can be added to the autoglossed version.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

exec("utils/sed_get_header ".$chafile);

?>
