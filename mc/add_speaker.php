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

// This script adds speaker data to the collection of trigrams.  The trigram script should be adjusted to collect the speaker as well, which would make this easier.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$trigrams="pd_final_combined";

// $add_speaker=query("alter table $trigrams add column speaker character varying(10) default ''");
// $add_sex=query("alter table $trigrams add column sex character varying(10) default ''");
// $add_age=query("alter table $trigrams add column age integer");

// $sql_s="select filename, utterance_id from $trigrams order by filename, utterance_id";
// $result_s=pg_query($db_handle,$sql_s) or die("Can't insert the items");
// while ($row_s=pg_fetch_object($result_s))
// {
// 	$sql_speaker=query("update $trigrams set speaker=(select speaker from {$row_s->filename}_cgutterances where utterance_id=$row_s->utterance_id) where filename='$row_s->filename' and utterance_id=$row_s->utterance_id");
// 	echo $row_s->filename.": ".$row_s->utterance_id."\n";
// }

$sql_sa="select filename, speaker  from $trigrams order by filename, speaker";
$result_sa=pg_query($db_handle,$sql_sa) or die("Can't insert the items");
while ($row_sa=pg_fetch_object($result_sa))
{
	$sql_sex=query("update $trigrams set sex=(select sex from siarad_sp where filename='$row_sa->filename' and speaker='$row_sa->speaker') where filename='$row_sa->filename' and speaker='$row_sa->speaker'");
	$sql_age=query("update $trigrams set age=(select age from siarad_sp where filename='$row_sa->filename' and speaker='$row_sa->speaker') where filename='$row_sa->filename' and speaker='$row_sa->speaker'");
	echo $row_sa->filename.": ".$row_sa->speaker."\n";
}

?>