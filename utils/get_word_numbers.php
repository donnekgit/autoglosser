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

// This script gives figures for the number of words in each file, along with end-totals and end-percentages.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$corpus="miami";
$target="inputs/$corpus/beta";

$fp = fopen("{$corpus}trans/{$corpus}_word_numbers.txt", "a") or die("Can't create the file");

$mflg="eng";
$lflg="spa";
$ind="eng&spa";

$mflg_total=0;
$lflg_total=0;
$ind_total=0;
$total_total=0;

echo "Filename,".$mflg.",".$lflg.",".$ind.",Total,".$mflg."%,".$lflg."%,".$ind."%\n";
fwrite($fp, "Filename,".$mflg.",".$lflg.",".$ind.",Total,".$mflg."%,".$lflg."%,".$ind."%\n"); 

$files=scandir($target);
natsort($files);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		//echo $filename."\n";
		
		$sql_s="select count(*) from {$filename}_cgwords where langid='$mflg'";
		$result_s=pg_query($db_handle,$sql_s) or die("Can't insert the items");
		while ($row_s=pg_fetch_object($result_s))
		{
			$mflg_words=$row_s->count;
			$mflg_total=$mflg_total+$mflg_words;
		}

		$sql_e="select count(*) from {$filename}_cgwords where langid='$lflg'";
		$result_e=pg_query($db_handle,$sql_e) or die("Can't insert the items");
		while ($row_e=pg_fetch_object($result_e))
		{
			$lflg_words=$row_e->count;
			$lflg_total=$lflg_total+$lflg_words;
		}

		$sql_i="select count(*) from {$filename}_cgwords where langid='$ind'";
		$result_i=pg_query($db_handle,$sql_i) or die("Can't insert the items");
		while ($row_i=pg_fetch_object($result_i))
		{
			$ind_words=$row_i->count;
			$ind_total=$ind_total+$ind_words;
		}

		$sql_t="select count(*) from {$filename}_cgwords where langid!='999'";
		$result_t=pg_query($db_handle,$sql_t) or die("Can't insert the items");
		while ($row_t=pg_fetch_object($result_t))
		{
			$total_words=$row_t->count;
			$total_total=$total_total+$total_words;
		}

		echo $filename.",".$mflg_words.",".$lflg_words.",".$ind_words.",".$total_words.",";
		fwrite($fp,$filename.",".$mflg_words.",".$lflg_words.",".$ind_words.",".$total_words.",");

		$mflg_words_percent=round($mflg_words / $total_words * 100,0);  // express language words as a percentage of the total
		$lflg_words_percent=round($lflg_words / $total_words * 100,0);  // express language words as a percentage of the total
		$ind_words_percent=round($ind_words / $total_words * 100,0);  // express language words as a percentage of the total

		echo $mflg_words_percent."%,".$lflg_words_percent."%,".$ind_words_percent."%\n";
		fwrite($fp, $mflg_words_percent."%,".$lflg_words_percent."%,".$ind_words_percent."%\n");

	}
}

echo "Total,".$mflg_total.",".$lflg_total.",".$ind_total.",".$total_total."\n";
fwrite($fp,"Total,".$mflg_total.",".$lflg_total.",".$ind_total.",".$total_total."\n");

$mflg_percent=round($mflg_total / $total_total * 100,0);  // express language words as a percentage of the total
$lflg_percent=round($lflg_total / $total_total * 100,0);  // express language words as a percentage of the total
$ind_percent=round($ind_total / $total_total * 100,0);  // express language words as a percentage of the total

echo "Percent,".$mflg_percent."%,".$lflg_percent."%,".$ind_percent."%,100%\n";
fwrite($fp,"Percent,".$mflg_percent."%,".$lflg_percent."%,".$ind_percent."%,100%\n");

?>