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

include("includes/fns.php");
include("/opt/siarad/config.php");

$mytable="patagonia1_cgfinished";

drop_existing_table($mytable);
//echo $utterances."<br/>";

$sql_table = "
CREATE TABLE $mytable (
    id serial NOT NULL,
	utterance integer,
	location integer,
    surface character varying(100),
    lemma character varying(100),
    tags character varying(250)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$mytable." ADD CONSTRAINT ".$mytable."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

$fp = fopen("outputs/patagonia1_cgout.txt", "w") or die("Can't create the file");

$lines=file("outputs/patagonia1_cg_applied.txt");
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

        $sql="insert into $mytable (utterance, location, surface) values ('$utt', '$loc', '$surface')";
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

		$sql_a="select * from $mytable where id=currval('".$mytable."_id_seq')";
		$result_a=pg_query($db_handle,$sql_a) or die("Can't get the items");
		while ($row_a=pg_fetch_object($result_a))
		{
			if (isset($row_a->tags))
			{
				$tags=$row_a->tags."/".$tags;
			}
		}

		$sql="update $mytable set lemma='$lemma', tags='$tags' where id=currval('".$mytable."_id_seq')";
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
