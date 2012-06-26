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

// This script uses the sound-bullet information in the _utterances table to silence the audio where utterances are marked www (ie no permission to distribute), but do not have sound-bullets against them.  This script is for a reverse silence - that is, instances where the www segments have NOT been marked with sound-bullets, but the bits you want to KEEP have been.  This script silences the segments between the end of each sound-bullet and the beginning of the next (as opposed to the "normal" script, where the segments between the beginning and end of each www sound-bullet are silenced).

// FIXME: Needs a bit more work.  We get blank durbegins and durends if (?) there are two consecutive tiers from the same speaker.  The 0s are easily filled in from the chat file, though - and remember to alter the durations as well.  Pad seems to complain sometimes even when there are no negative or 0 values, but ones that are still small (eg 3 or 9) - try increasing the threshold in the delete clause (delete from $sox where duration<=0) and see if that works.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}
$silenced=$filename."_silenced";  // Name for the output file.
$sox=$filename."_nowww";  // Name for the silence location table, where www has not been bulleted.

$snd_frmt="mp3"; 
$inpath="/home/kevin/sdb7/maria_{$snd_frmt}_to_be_silenced";
$outpath="/home/kevin/sdb7/maria_{$snd_frmt}_silencedfiles";

$pad='';
$trim='';
$splice='';

/*

drop_existing_table($sox);

// Set up the table.  First, get the utterances NOT marked www in the transcription, and add newend (to hold the durbegin of the next sound-bullet) and duration.  Add an index column as well, to make it easier to switch up the durbegins - the utterance_id is a broken sequence. 
$sql_www=query("create table $sox as select utterance_id, durbegin, durend from $utterances where surface !~ 'www' order by utterance_id; alter table $sox add column newend integer; alter table $sox add column duration integer; alter table $sox add column dur_id serial not null; alter table only $sox add constraint {$sox}_pk primary key (dur_id);");

// Move the durbegin of the next bullet into newend.
$sql_m=query("select * from $sox order by dur_id;");
while ($row_m=pg_fetch_object($sql_m))
{
	$sql_o=query("select durbegin from $sox where utterance_id=(select min(utterance_id) from (select * from $sox where utterance_id>$row_m->utterance_id order by utterance_id) as mylist);");
	while ($row_o=pg_fetch_object($sql_o))
	{
		$oldbegin=$row_o->durbegin;
	}
	echo $oldbegin."\n";
	$sql_u=query("update $sox set newend=$oldbegin where utterance_id=$row_m->utterance_id;");
}

// Change the column names so that we don't need to change the SoX code below, and calculate the duration.
$sql_www=query("alter table $sox rename column durbegin to oldbegin; alter table $sox rename column durend to durbegin; alter table $sox rename column newend to durend; update $sox set duration=durend-durbegin;");

$durbegin_prev=0;
$durend_prev=0;

// Tidy the generated table of places to silence.
$sql_d=query("select * from $sox order by utterance_id;");
while ($row_d=pg_fetch_object($sql_d))
{
	// Delete utterances that are fully overlapped by another (otherwise you get a pad error).
	if ($row_d->durbegin>$durbegin_prev and $row_d->durend<$durend_prev)  
	{
		$sql_out=query("delete from $sox where utterance_id=$row_d->utterance_id;");
	}
	
	// If the startpoint of one utterance is less than the endpoint of the previous one, move the startpoint past the endpoint, and adjust
	// the duration (otherwise you get a splice error).   You will probably get a warning like: 
	// sox WARN splice: Input audio too short; splices not made: 46
	// but the audio will probably sound alright.  According to Ulrich Klauer, this is a bug in splice - "splice doesn't like two positions that
	// are very close to each other, and ignores all following positions.  It isn't too apparent since the splicing is optional, and only there
	// to reduce clicks at the silence boundaries, but it isn't done from this point to the end."
	if ($row_d->durbegin<$durend_prev)  
	{
		echo $row_d->utterance_id."\n";
		$sql_fixbeg=query("update $sox set durbegin=($durend_prev+1) where utterance_id=$row_d->utterance_id;");
		$sql_fixdur=query("update $sox set duration=($row_d->durend-$durend_prev-1) where utterance_id=$row_d->utterance_id;");
	}
	
	$durbegin_prev=$row_d->durbegin;
	$durend_prev=$row_d->durend;
}

// CHECK - not sure whether the above code is actually needed, since we are now not using splice, and pad fails in any case if there is a negative duration.  So maybe just the deletion below would be OK.

*/

// Remove entries where the duration is negative, or pad will complain.
$sql_n=query("delete from $sox where duration<=0;");

// Loop through the tidied result set, building the SoX command.
$sql="select * from $sox order by utterance_id";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	// Convert to seconds from CLAN's milliseconds, and format for passing to bash.
	$durbegin=$row->durbegin/1000;
	$durend=$row->durend/1000;
	$duration=$row->duration/1000;
	$pad.=$duration."@".$durbegin." \\\n";
	$trim.="trim 0 ".$durend." ".$duration." \\\n";
	$splice.=$durbegin." ".$durend." \\\n";
}

//$sox_command="sox $inpath/$filename.$snd_frmt $outpath/$silenced.$ \\\npad \\\n".$pad.$trim."splice \\\n".$splice;
// Splice causes problems, and apparently isn't really needed.
//$sox_command="sox $inpath/$filename.$snd_frmt $outpath/$silenced.$snd_frmt \\\npad \\\n".$pad.$trim;
//echo $sox_command;
//exec("$sox_command");


$snd_frmt="wav"; 
$inpath="/home/kevin/sdb7/maria_{$snd_frmt}_to_be_silenced";
$outpath="/home/kevin/sdb7/maria_{$snd_frmt}_silencedfiles";

$sox_command="sox $inpath/$filename.$snd_frmt $outpath/$silenced.$snd_frmt \\\npad \\\n".$pad.$trim;
echo $sox_command;
exec("$sox_command");

?>
