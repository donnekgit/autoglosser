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

// This script gathers the codeswitch data, with no reference to triggers, from _cognates tables to give a summary table by speaker.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$corpus="siarad";
$target="inputs/$corpus/beta";

$results="codeswitch_results";
include("cognates/create_csonly_results_table.php");

$files=scandir($target);
natsort($files);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		echo "Processing $filename\n";
		
		$spkrs=query("select speaker from {$filename}_cognates group by speaker");
		while ($spkr=pg_fetch_object($spkrs))
		{
			$sql_ext=query("select external, speaker, count(*) as number from {$filename}_cognates where speaker='$spkr->speaker' group by speaker, external");
			while ($row_ext=pg_fetch_object($sql_ext))
			{
				if ($row_ext->external=="---") { $ext_na=$row_ext->number; }
				if ($row_ext->external=="ST") { $ext_st=$row_ext->number; }
				if ($row_ext->external=="NST") { $ext_nst=$row_ext->number; }
				if ($row_ext->external=="SNT") { $ext_snt=$row_ext->number; }
				if ($row_ext->external=="NSNT") { $ext_nsnt=$row_ext->number; }
			}

			$sql_int=query("select internal, speaker, count(*) as number from {$filename}_cognates where speaker='$spkr->speaker' group by speaker, internal");
			while ($row_int=pg_fetch_object($sql_int))
			{
				if ($row_int->internal=="---") { $int_na=$row_int->number; }
				if ($row_int->internal=="ST") { $int_st=$row_int->number; }
				if ($row_int->internal=="NST") { $int_nst=$row_int->number; }
				if ($row_int->internal=="SNT") { $int_snt=$row_int->number; }
				if ($row_int->internal=="NSNT") { $int_nsnt=$row_int->number; }
			}
			
			// Set the codeswitch figures to 0 if there are no instances, or the insert query will fail.
			//We don't need to do this with the nonswitch figures, since there will always be enough of them.
			$ext_st=(isset($ext_st)) ? $ext_st : 0;
			$ext_snt=(isset($ext_snt)) ? $ext_snt : 0;
			$int_st=(isset($int_st)) ? $int_st : 0;	
			$int_snt=(isset($int_snt)) ? $int_snt : 0;
			
			$ext_switch=$ext_st+$ext_snt;
			$ext_noswitch=$ext_nst+$ext_nsnt;

			$int_switch=$int_st+$int_snt;
			$int_noswitch=$int_nst+$int_nsnt;

			$write1=query("insert into $results (filename, speaker, ext_na, ext_switch, ext_noswitch, int_na, int_switch, int_noswitch) values ('$filename', '$spkr->speaker', $ext_na, $ext_switch, $ext_noswitch, $int_na, $int_switch, $int_noswitch)");
			
			echo $spkr->speaker." - ".$ext_na." - ".$ext_switch." - ".$ext_noswitch." - ".$int_na." - ".$int_switch." - ".$int_noswitch."\n";
		}
		
		unset($ext_na, $ext_st, $ext_nst, $ext_snt, $ext_nsnt, $int_na, $int_st, $int_nst, $int_snt, $int_nsnt, $ext_switch, $ext_noswitch, $int_switch, $int_noswitch);
	}
	
}

?>