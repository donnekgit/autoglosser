<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// This script uses the entries in the cogloc table to segment the utterances at a cognate.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$cogloc=$filename."_cogloc";

$fp = fopen("outputs/".$filename."/".$filename."_cognates.csv", "w") or die("Can't create the file");

$sql1="select utterance_id from $cogloc group by utterance_id order by utterance_id";
$result1=pg_query($db_handle,$sql1) or die("Can't get the items");
while ($row1=pg_fetch_object($result1))
{
	$sql2="select * from $cogloc where utterance_id=$row1->utterance_id order by location";
	$result2=pg_query($db_handle,$sql2) or die("Can't get the items");
	while ($row2=pg_fetch_object($result2))
	{
		$locarray[]=$row2->location;
	}

	echo "\n".$row1->utterance_id."\n";
	//print_r($locarray);

	$lastone=0;  // Handle cognate coming first in the utterance.

	for ($i = 0; $i = count($locarray); $i++)
	{
		if(empty($locarray[1]))  // Handle cognate coming last in the utterance.
		{
			$myand="";
		}
		else
		{
			$myand=" and location<=$locarray[1] ";
		}

		$sql3="select * from $words where utterance_id=$row1->utterance_id and location>=$lastone and location<$locarray[0] order by location";
		$result3=pg_query($db_handle,$sql3) or die("Can't get the items");
		while ($row3=pg_fetch_object($result3))
		{
			if($row3->langid=="cym&eng" or $row3->langid=="eng+cym")
			{
				$row3->surface=strtoupper($row3->surface);
			}
			if($row3->langid=="eng")
			{
				$row3->surface="@@".$row3->surface."@@";
			}
			if(preg_match("/\.V\./", $row3->auto))  // If it's a verb
			{
				$row3->surface="[[".$row3->surface."]]";
			}
			$premat.=$row3->surface." ";
			$prem[]=$row3->surface;
			$preauto.=$row3->auto." ";
		}

		$sql4="select * from $words where utterance_id=$row1->utterance_id and location=$locarray[0]";
		$result4=pg_query($db_handle,$sql4) or die("Can't get the items");
		while ($row4=pg_fetch_object($result4))
		{
			$mycog=strtoupper($row4->surface)." ";
			$myloc=$row4->location;
			$speaker=$row4->speaker;
			$filename=$row4->filename;
			$myauto=$row4->auto;
		}

		$sql5="select * from $words where utterance_id=$row1->utterance_id and location>$locarray[0] $myand order by location";
		$result5=pg_query($db_handle,$sql5) or die("Can't get the items");
		while ($row5=pg_fetch_object($result5))
		{
			if($row5->langid=="cym&eng" or $row5->langid=="eng+cym")
			{
				$row5->surface=strtoupper($row5->surface);
			}
			if($row5->langid=="eng")
			{
				$row5->surface="@@".$row5->surface."@@";
			}
			if(preg_match("/\.V\./", $row5->auto))
			{
				$row5->surface="[[".$row5->surface."]]";
			}
			$postmat.=$row5->surface." ";
			$postm[]=$row5->surface;
			$postauto.=$row5->auto." ";
		}

		echo $premat." >>> ";
		$punc=array(".", "?", "!");
		//var_dump($prem);
		$myprem=array_diff($prem, $punc);
		//var_dump($myprem);
		$premcount=count($myprem);
		echo $premcount."\n";

		echo $mycog."\n <<< ";

		echo $postmat;
		$mypostm=array_diff($postm, $punc);
		//var_dump($mypostm);
		$postmcount=count($mypostm);
		echo $postmcount."\n";
		echo "\n";

		echo $preauto." >>> ";
		echo $myauto." <<< ";
		echo $postauto;
		echo "\n";

		$surface="\"".$row1->utterance_id."\",\"".$myloc."\",\"a\",\"".$speaker."\",\"".$filename."\",\"".$premat."\",\"".$premcount."\",\"".$mycog."\",\"".$postmat."\",\"".$postmcount."\"\n";
		fwrite($fp, $surface);
		echo $surface."\n";

		$allauto="\"".$row1->utterance_id."\",\"".$myloc."\",\"b\",\"".$speaker."\",\"".$filename."\",\"".$preauto."\",\"\",\"".$myauto."\",\"".$postauto."\",\"\"\n";
		fwrite($fp, $allauto);

		unset($premat, $postmat, $mycog, $myloc, $speaker, $filename, $preauto, $myauto, $postauto, $surface, $allauto, $prem, $myprem,  $premcount, $postm, $mypostm, $postmcount);

		$lastone=$locarray[0];

		array_shift($locarray);  // Remove the first cognate entry in the array so that we can process the next one
		$locarray=array_values($locarray);  // Re-index the array
	}

	fwrite($fp, "\n");

	echo "\n";

	unset($locarray);
}

?>