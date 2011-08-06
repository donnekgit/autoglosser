<?php
/*
This script runs through a directory of files, getting first the figures for a particular language, and then the totals.  These are inserted into a db table, and then the percentage of words in the file in that language is calculated from the two figures and also inserted into the table.
*/

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$dir="miami";
$lgtag="spa";

$sql_w="select count(*) from $words where langid='$lgtag'";
$result_w=pg_query($db_handle,$sql_w) or die("Can't insert the items");
while ($row_w=pg_fetch_object($result_w))
{
	$mywords=$row_w->count;
}

$sql_t="select count(*) from $words";
$result_t=pg_query($db_handle,$sql_t) or die("Can't insert the items");
while ($row_t=pg_fetch_object($result_t))
{
	$mytotal=$row_t->count;
}

$percent=$mywords / $mytotal * 100;  // express language words as a percentage of the total

$sql="insert into percent_$dir(filename, words, total, percent) values ('$filename', $mywords, $mytotal, $percent)";
$result=pg_query($db_handle,$sql) or die("Can't insert the items");

echo $row_f->filename." ";
echo $row_f->words." ";
echo $row_f->total." ";
echo $percent."\n";

?>