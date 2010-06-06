<?php

/*
Copyright Kevin Donnelly 2010.

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

//Output table: $filename_cgfinished
//Output file: $filename_cgout.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

echo "*\n*\nCreating the $cgfinished table\n*\n*\n";
include("create_cgfinished.php");

$fp = fopen("outputs/".$filename."/".$filename."_cgout.txt", "w") or die("Can't create the file");

$lines=file("outputs/".$filename."/".$filename."_cg_applied.txt");
$utt=1;
$loc=1;  
     
foreach ($lines as $line_num => $line)
{
 	// Lines with surface forms
    if (preg_match("/^\"</", $line))
    {
        $surface=preg_replace("/(\"|<|>)/", "", $line);
        $surface=trim(pg_escape_string($surface));

		$surfaceline="(".$utt.": ".$loc.") ".$surface."\n";
		echo $surfaceline;
		fwrite($fp, $surfaceline);

        $sql="insert into $cgfinished (utterance_id, location, surface) values ('$utt', '$loc', '$surface')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");

		$loc++;
    }
    
	// Lines with lemmas
    elseif (preg_match("/^\t\"/", $line))
    {
		$lemmaline=preg_replace("/^\"/", "", $line);
		$lemmaparts=preg_split('/\"\s/', $lemmaline);
        $lemma=trim(pg_escape_string(preg_replace("/\"/", "", $lemmaparts[0])));
        $lemmarest=preg_split('/:/', $lemmaparts[1]);
		$pos=trim(pg_escape_string($lemmarest[0]));
		$enlemma=($lemmarest[1]=='') ? $enlemma=$lemma :  $enlemma=trim(pg_escape_string($lemmarest[1]));
		$tags=trim(pg_escape_string(preg_replace("/\s/", "_", $enlemma).".".strtoupper(preg_replace("/\s/", ".", $pos))));

		$sql_a="select * from $cgfinished where id=currval('".$cgfinished."_id_seq')";
		$result_a=pg_query($db_handle,$sql_a) or die("Can't get the items");
		while ($row_a=pg_fetch_object($result_a))
		{
			if (isset($row_a->tags))
			{
				$tags=$row_a->tags."/".$tags;
			}
		}

		$sql="update $cgfinished set lemma='$lemma', tags='$tags' where id=currval('".$cgfinished."_id_seq')";
		$result=pg_query($db_handle,$sql) or die("Can't insert the items");
		
		$lemmaline=$lemma.": ".$tags."\n";
		echo $lemmaline;
		fwrite($fp, $lemmaline);
    }
    
    // Blank lines
    else
    {
		$spacer="====================\n";
		echo $spacer;
		fwrite($fp, $spacer);
		$utt++;
		$loc=1;
    }
    
	//unset($durbegin, $durend, $duration); 
}

fclose($fp);

?>
