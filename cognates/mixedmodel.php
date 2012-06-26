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

// This script arranges codeswitch and trigger data in a form suitable for mixed model analysis.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

//$words=$words."_nuked";  // Required for trigword query, and total words queries.
//$cognates=$filename."_diana";
//$mixedmodel=$filename."_mixedmodel";

include("create_mixedmodel.php");

$sql_t=query("select spkturn, clspk from $cognates group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and place them in order.
while ($row_t=pg_fetch_object($sql_t))
{
	$spkturn=$row_t->spkturn;
	$clspk=$row_t->clspk;
	$tally[$spkturn]=$clspk;  // Tally how many clauses (value) are in each speaker turn (key).
}

//print_r($tally);

$sql1=query("select spkturn, clspk from $cognates group by spkturn, clspk order by spkturn, clspk");  // Get all the speaker turns and place them in order.
while ($row1=pg_fetch_object($sql1))
{
	$spkturn=$row1->spkturn;
	$clspk=$row1->clspk;

	$sql3=query("select * from $cognates where spkturn=$spkturn and clspk=$clspk order by clause_id");
	while ($row3=pg_fetch_object($sql3))
	{
		$utt=$row3->utterance_id;
		$minloc=$row3->minloc;
		$maxloc=$row3->maxloc;
		$speaker=$row3->speaker;
		$verblg=$row3->verblg;
		$slotlg=$row3->slotlg;
		$t=unserialize($row3->t_ser);  // Remember that the figure in the T array refers to the location, which will be the location in the original utterance.  FIX - this should reflect the location in the clause..
		$nt_lg=unserialize($row3->nt_lg_ser);  // The count of the different non-T languages in the clause.
		$surface=pg_escape_string($row3->surface);
		$new=$row3->newturn;
		$f_lg=$row3->f_lg;  // Language of the first non-T in the clause.
		$p_lg=$row3->p_lg;  // Language of the last non-T in the clause.
		$clause_id=$row3->clause_id;  // Number of this clause.
		$nextcl=$clause_id+1;  // Number of the next clause.
		$prevcl=$clause_id-1;  // Number of the previous clause.
		$nt_sum=(!empty($nt_lg)) ? array_sum($nt_lg) : 0;  // Number of non-T words in the clause - set it to 0 if the non-T array is empty.

		//print_r($t);
		//print_r($nt_lg);
		//echo $nt_sum."\n";
		
		$cl_len=$maxloc-$minloc+1;
		$contains_t=(!empty($t)) ? "yes" : "no";
		$count_t=count($t);
		if ($row3->external=="ST" or $row3->external=="SNT")
		{
			$ext_cs="yes";
		}
		elseif ($row3->external=="NST" or $row3->external=="NSNT")
		{
			$ext_cs="no";
		}
		else
		{
			$ext_cs="n/a";
		}
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
		
		$cleanslot=preg_replace("/0/", "", $slotlg);
		if (preg_match("/1/", $cleanslot))
		{
			if (preg_match("/2/", $cleanslot))
			{
				$cl_lg="mix";
			}
			else
			{
				$cl_lg="cym";
			}
		}
		else
		{
			$cl_lg="eng";
		}
		
// 		if ($prev_cl_lg="")
// 		{
// 			$prev_cl_lg=$cl_lg;
// 		}
// 		echo $prev_cl_lg." - ";
		
		if (!empty($verblg) and $prev_verblg!="")
		{
			if ($verblg==$prev_verblg)
			{
				$ext_cs="no";
			}
			else
			{
				$ext_cs="yes";
			}
		}
		else
		{
			$ext_cs="n/a";
		}
		//echo $cl_lg." - ";
		
		$cswitch=($ext_cs=="yes" or $int_cs=="yes") ? "yes" : "no";

		if (!empty($t))
		{
			$i=1;  // Set up a counter for the number of triggers.
			foreach ($t as $t_k=>$t_v)
			{
				$t_no=$i++;
				$t_loc=$t_k-$minloc+1;
				$sql_t=query("select surface from $words where filename='$filename' and utterance_id=$utt and location=$t_k");
				while ($row_t=pg_fetch_object($sql_t))
				{
					$trigword=pg_escape_string($row_t->surface);
					$t_len=strlen($row_t->surface);
				}
				
				//echo $filename." - ".$speaker." - ".$spkturn." - ".$clspk." - ".$tally[$spkturn]." - ".$clause_id." - ".$cl_len." - ".$verblg." - ".$contains_t." - ".$count_t." - ".$t_no." - ".$t_loc." - ".$t_v." - ".$trigword." - ".$t_len." - ".$nt_sum." - ".$cswitch." - ".$slotlg." - ".$ext_cs." - ".$int_cs." - ".$cl_lg." - ".$surface."\n";

				echo $filename." - ".$speaker." - ".$contains_t." - ".$trigword." - ".$cswitch.": ".$cl_lg." - ".$ext_cs."\n";
				
				$write1=query("insert into $mixedmodel (filename, speaker, spkturn, clspk, tally, clause_id, cl_len, verblg, contains_t, count_t, t_no, t_loc, t_v, trigword, t_len, nt_sum, cswitch, slotlg, ext_cs, int_cs, cl_lg, surface) values ('$filename', '$speaker', $spkturn, $clspk, $tally[$spkturn], $clause_id, $cl_len, '$verblg', '$contains_t', $count_t, $t_no, $t_loc, '$t_v', '$trigword', $t_len, $nt_sum, '$cswitch', '$slotlg', '$ext_cs', '$int_cs', '$cl_lg', '$surface')");
				
				unset($t_loc, $t_k, $t_v, $t_len, $trigword);
			}
		}
		else
		{
			$t_no=0;
			$t_loc=0;
			$t_v="none";
			$t_len=0;
						
			//echo $filename." - ".$speaker." - ".$spkturn." - ".$clspk." - ".$tally[$spkturn]." - ".$clause_id." - ".$cl_len." - ".$verblg." - ".$contains_t." - ".$count_t." - ".$t_no." - ".$t_loc." - ".$t_v." - ".$trigword." - ".$t_len." - ".$nt_sum." - ".$cswitch." - ".$slotlg." - ".$ext_cs." - ".$int_cs." - ".$cl_lg." - ".$surface."\n";
			
			echo $filename." - ".$speaker." - ".$contains_t." - ".$trigword." - ".$cswitch.": ".$cl_lg." - ".$ext_cs."\n";
			
			$write2=query("insert into $mixedmodel (filename, speaker, spkturn, clspk, tally, clause_id, cl_len, verblg, contains_t, count_t, t_no, t_loc, t_v, trigword, t_len, nt_sum, cswitch, slotlg, ext_cs, int_cs, cl_lg, surface) values ('$filename', '$speaker', $spkturn, $clspk, $tally[$spkturn], $clause_id, $cl_len, '$verblg', '$contains_t', $count_t, $t_no, $t_loc, '$t_v', '$trigword', $t_len, $nt_sum, '$cswitch', '$slotlg', '$ext_cs', '$int_cs', '$cl_lg', '$surface')");
			
			unset($t_loc, $t_k, $t_v, $t_len, $trigword);
		}
	
	$prev_verblg=$verblg;
	//echo $prev_cl_lg.")\n";
	
	}
}



// Get the totals for triggers and codeswitches per file ...

$get_all_t=query("select count(trigword) as all_t from $mixedmodel where trigword!='';");
while ($row_get_all_t=pg_fetch_object($get_all_t))
{
	$all_t=$row_get_all_t->all_t;
}
$update_all_t=query("update $mixedmodel set all_t=$all_t;");

$get_all_w=query("select count(surface) as all_w from $words where langid!='999';");
while ($row_get_all_w=pg_fetch_object($get_all_w))
{
	$all_w=$row_get_all_w->all_w;
}
$update_all_w=query("update $mixedmodel set all_w=$all_w;");

$get_all_cs=query("select count(cswitch) as all_cs from $mixedmodel where cswitch='yes';");
while ($row_get_all_cs=pg_fetch_object($get_all_cs))
{
	$all_cs=$row_get_all_cs->all_cs;
}
$update_all_cs=query("update $mixedmodel set all_cs=$all_cs;");

$get_all_cl=query("select count(clause_id) as all_cl from $cognates;");
while ($row_get_all_cl=pg_fetch_object($get_all_cl))
{
	$all_cl=$row_get_all_cl->all_cl;
}
$update_all_cl=query("update $mixedmodel set all_cl=$all_cl;");


// ... and per speaker.

$get_speakers=query("select speaker from $mixedmodel group by speaker;");
while ($row_get_speakers=pg_fetch_object($get_speakers))
{
	$dbspeaker=$row_get_speakers->speaker;
	
	$get_spk_t=query("select count(trigword) as spk_t from $mixedmodel where speaker='$dbspeaker' and trigword!='';");
	while ($row_get_spk_t=pg_fetch_object($get_spk_t))
	{
		$spk_t=$row_get_spk_t->spk_t;
	}
	$update_spk_t=query("update $mixedmodel set spk_t=$spk_t where speaker='$dbspeaker';");
	
	$get_spk_w=query("select count(surface) as spk_w from $words where langid!='999' and speaker='$dbspeaker';");
	while ($row_get_spk_w=pg_fetch_object($get_spk_w))
	{
		$spk_w=$row_get_spk_w->spk_w;
	}
	$update_spk_w=query("update $mixedmodel set spk_w=$spk_w where speaker='$dbspeaker';");
	
	$get_spk_cs=query("select count(cswitch) as spk_cs from $mixedmodel where speaker='$dbspeaker' and cswitch='yes';");
	while ($row_get_spk_cs=pg_fetch_object($get_spk_cs))
	{
		$spk_cs=$row_get_spk_cs->spk_cs;
	}
	$update_spk_cs=query("update $mixedmodel set spk_cs=$spk_cs where speaker='$dbspeaker';");
	
	$get_spk_cl=query("select count(clause_id) as spk_cl from $cognates where speaker='$dbspeaker';");
	while ($row_get_spk_cl=pg_fetch_object($get_spk_cl))
	{
		$spk_cl=$row_get_spk_cl->spk_cl;
	}
	$update_spk_cl=query("update $mixedmodel set spk_cl=$spk_cl where speaker='$dbspeaker';");
}



?>