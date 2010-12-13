<?php

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$chafile=$_SERVER['argv'][1];
$profile=$chafile."_profile";

# set up the profile table
drop_existing_table($profile);
$sql_table = "
CREATE TABLE $profile (
	id serial,
    utterance_id integer,
    total integer,
    my0 integer,
    my1 integer,
    my2 integer,
    per0 integer,
    per1 integer,
    per2 integer
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$profile." ADD CONSTRAINT ".$profile."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

# insert info into the profile table
$sql_a="select * from ".$chafile."_cgutterances order by utterance_id";
//$sql_a="select * from sastre1_cgutterances where utterance_id=116 order by utterance_id";
$result_a=pg_query($db_handle,$sql_a) or die("Can't get the items");
while ($row_a=pg_fetch_object($result_a))
{
	$sql="select utterance_id, langid from ".$chafile."_cgwords where utterance_id=$row_a->utterance_id and langid!='999'";
	$result=pg_query($db_handle,$sql) or die("Can't get the items");
	while ($row=pg_fetch_object($result))
	{
		$langid[]=$row->langid;
	}
	
	$total=count($langid);
	
	if ($total>0);
	{
		echo $row_a->utterance_id.": ";
		$utt_id=$row_a->utterance_id;
		echo $utt_id.": ";
		echo $total." (T) - ";
		
		$freq=array_count_values($langid);
		//print_r($freq);
		
	    $my0=(empty($freq[0])) ? 0 : $freq[0];
	    $my1=(empty($freq[1])) ? 0 : $freq[1];
	    $my2=(empty($freq[2])) ? 0 : $freq[2];
	    //$my3=(empty($freq[3])) ? 0 : $freq[3];  
	
		echo $my0." (0) - ";
		echo $my1." (1) - ";
		echo $my2." (2) - ";
		//echo $my3." (3) - ";
		
		$per0=($my0==0) ? 0 : round($my0/$total*100);
		$per1=($my1==0) ? 0 : round($my1/$total*100);
		$per2=($my2==0) ? 0 : round($my2/$total*100);
		//$per3=($my3==0) ? 0 : round($my3/$total*100);
			
		echo $per0." (%0) - ";
		echo $per1." (%1) - ";
		echo $per2." (%2) - ";
		//echo $per3." (%3) - ";
		
		echo "\n";
		
		$sql_w="insert into $profile (utterance_id, total, my0, my1, my2, per0, per1, per2) values($utt_id, $total, $my0, $my1, $my2, $per0, $per1, $per2)";
		$result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
		
		unset($langid, $total, $freq, $my0, $my1, $my2, $my3, $per0, $per1, $per2, $per3);
	}
}

?>
