<?php

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql=query("select filename, spkturn from mixedmodel_jumbo_mirjam where filename='davies1' and spkturn < 30 group by filename, spkturn order by filename, spkturn;");
while ($row=pg_fetch_object($sql))
{
	$filename=$row->filename;
	$spkturn=$row->spkturn;
	echo $filename." - ".$spkturn." - ";
	
	$sql2=query("select max(clspk) from mixedmodel_jumbo_mirjam where filename='$filename' and spkturn=$spkturn;");
	while ($row2=pg_fetch_object($sql2))
	{
		echo $row2->max."\n";
	}
}
























?>