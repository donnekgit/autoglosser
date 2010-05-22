<?php

/*
Copyright Kevin Donnelly 2009.

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

$db_handle=pg_connect('host=localhost dbname=siarad user=kevin password=kevindbs');

$fp = fopen("outputs/herring6.txt", "w") or die("Can't create the file");

$sql="select * from herring6_utterances where utterance_id in (1,2,3,4,5,6,7,8,9,10,11,12,13,18,19,21,22,24,25,26,175,184) order by utterance_id";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$out_utterance="*".$row->speaker.": ".$row->welsh." %snd:\"".$row->chafile."\"_".$row->durbegin."_".$row->durend."\n";
	fwrite($fp, $out_utterance);

	$gloss="%gls: ";
	$sql_gl="select * from herring6_words where utterance_id=$row->utterance_id and langid=3 order by location";
	$result_gl=pg_query($db_handle,$sql_gl) or die("Can't get the items");
	while ($row_gl=pg_fetch_object($result_gl))
	{
		$gloss.=$row_gl->gloss." ";
	}

	$gloss=trim($gloss)."\n";
	fwrite($fp, $gloss);

	unset($gloss);
}

fclose($fp);

?>