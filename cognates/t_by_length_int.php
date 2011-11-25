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

// This script gets the number and percentage of ST/NST and SNT/NSNT clauses by clause length.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$cognates=$filename."_cognates";

$fp = fopen("cognates/$filename/".$filename."_t_by_length_int.txt", "w") or die("Can't create the file");  // Open a file for the results.

$header="Clause length (words)\tTotal number\tNumber of ST\tNumber of NST\tPercentage ST/NST\tNumber of SNT\tNumber of NSNT\tPercentage SNT/NSNT\n";
fwrite($fp, $header);

$sql_no=query("select max(maxloc-minloc) from ".$filename."_cognates");
while ($row_no=pg_fetch_object($sql_no))
{
	$maxno=$row_no->max;  // Get the number of words in the longest clause.
}

for ($i=0; $i<=$maxno; $i++)  // Loop through the clauses of each length.
{
	// Total number of clauses.
	$sql_t=query("select count(*) from ".$filename."_cognates where maxloc-minloc=$i");
	while ($row_t=pg_fetch_object($sql_t))
	{
		$t=$row_t->count;
	}
	
	// Total number of ST clauses.
	$sql_st=query("select count(*) from ".$filename."_cognates where maxloc-minloc=$i and internal='ST'");
	while ($row_st=pg_fetch_object($sql_st))
	{
		$st=$row_st->count;
	}
	
	// Total number of NST clauses.
	$sql_nst=query("select count(*) from ".$filename."_cognates where maxloc-minloc=$i and internal='NST'");
	while ($row_nst=pg_fetch_object($sql_nst))
	{
		$nst=$row_nst->count;
	}
	
	// Total number of SNT clauses.
	$sql_snt=query("select count(*) from ".$filename."_cognates where maxloc-minloc=$i and internal='SNT'");
	while ($row_snt=pg_fetch_object($sql_snt))
	{
		$snt=$row_snt->count;
	}
	
	// Total number of NSNT clauses.
	$sql_nsnt=query("select count(*) from ".$filename."_cognates where maxloc-minloc=$i and internal='NSNT'");
	while ($row_nsnt=pg_fetch_object($sql_nsnt))
	{
		$nsnt=$row_nsnt->count;
	}
	
	if ($st>0 or $nst>0)
	{
		$total_t=$st+$nst;
		$stpercent= rounded($st/$total_t*100, 0);  // Get % of ST/NST clauses.
	}
	else
	{
		$stpercent=0;
	}
	
	if ($snt>0 or $nsnt>0)
	{
		$total_nt=$snt+$nsnt;
		$sntpercent=rounded($snt/$total_nt*100, 0);  // Get % of SNT/NSNT clauses.
	}
	else
	{
		$sntpercent=0;
	}
	
	$j=$i+1;  // The number of words in the clause will be (maxloc-minloc)+1.
	echo $j." - ".$t." - ".$st." - ".$nst." (".$stpercent."%) - ".$snt." - ".$nsnt." (".$sntpercent."%)\n";  // Write out to the terminal
	fwrite($fp, $j."\t".$t."\t".$st."\t".$nst."\t".$stpercent."\t".$snt."\t".$nsnt."\t".$sntpercent."\n");  // Write out to the file.
	
	unset($stpercent, $sntpercent);
}

fclose($fp);

?>