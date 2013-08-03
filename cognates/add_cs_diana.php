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

// This script backports codeswitch and linguality data to the _diana files.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Uncomment to test a particular file.
//$filename="stammers4";
$cognates=$filename."_diana";

// Add code to create the new fields.
//$drop_ext_cs=query("alter table $cognates drop column ext_cs;");
$add_ext_cs=query("alter table $cognates add column ext_cs character varying(10) default '';");
$add_ext_cs=query("alter table $cognates add column int_cs character varying(10) default '';");
$add_ext_cs=query("alter table $cognates add column linguality character varying(10) default '';");

//add_column_if_not_exist($cognates, $ext_cs)

$sql3=query("select * from $cognates order by clause_id;");
while ($row3=pg_fetch_object($sql3))
{
	$minloc=$row3->minloc;
	$maxloc=$row3->maxloc;
	$verblg=$row3->verblg;
	$slotlg=$row3->slotlg;
	$langid=$row3->langid;
	
	echo $row3->clause_id." - ";
	//echo $verblg." - ";

	$cl_len=$maxloc-$minloc+1;  // Calculate clause length.
	
	// Use the backward external entry to calculate ext_cs.
	if ($row3->externalb=="ST" or $row3->externalb=="SNT")
	{
		$ext_cs="yes";
	}
	elseif ($row3->externalb=="NST" or $row3->externalb=="NSNT")
	{
		$ext_cs="no";
	}
	else  // where analyse_cognates gives "---"
	{
		$ext_cs="n/a";
	}
	//echo $ext_cs." - ";  //based on word language 
	
	// Hack to allow ext_cs to be based on verb language rather than changes between P and F.
	// This overwrites most of the previous block's output (except for (b) and (c) in the key), but that block is left in so that it can be reverted to if desired.
	if ($ext_cs !='n/a')  // In cases where ext_cs is "yes" or "no" ...
	{
		if (!empty($verblg) and $prev_verblg!="")  // ... if there are entries for both verblg and prev_verblg (which is set at the end of the loop) ...
		{
			if ($verblg==$prev_verblg)  // ... and they are the same ...
			{
				$ext_cs="no";  // ... set ext_cs to "no" ...
			}
			else  // ... but if they are different ...
			{
				$ext_cs="yes";  // ... set ext_cs to "yes" ...
			}
		}
		else  // and if either verblg or prev_verblg has no entry ...
		{
			$ext_cs="n/a";  // ... set ext_cs to "n/a", otherwise there would be an invalid comparison between a clause with a verb and one without.
		}
		//echo $cl_lg." - ";
	}
	echo $ext_cs." - ";  // based on verb language

	// Use the internal entry to calculate int_cs.
	if ($row3->internal=="ST" or $row3->internal=="SNT")
	{
		$int_cs="yes";
	}
	elseif ($row3->internal=="NST" or $row3->internal=="NSNT")
	{
		$int_cs="no";
	}
	else
	{
		$int_cs="n/a";
	}
	echo $int_cs." - ";
	
	//  Add linguality, using the algorithm from the original clause analysis.
	//echo $langid."\n";
	$langs=explode(" ", trim($langid));
	//print_r($langs);
	$linguality=get_linguality($langs);
	echo $linguality." - ";
	
	echo $row3->surface." - ";
	echo "\n";
	
	$write1=query("update $cognates set ext_cs='$ext_cs', int_cs='$int_cs', linguality='$linguality' where clause_id=$row3->clause_id;");

	$prev_verblg=$verblg;
}

?>