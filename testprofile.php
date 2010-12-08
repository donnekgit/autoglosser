<?php

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$sql_a="select * from sastre1_cgutterances order by utterance_id";
//$sql_a="select * from sastre1_cgutterances where utterance_id=116 order by utterance_id";
$result_a=pg_query($db_handle,$sql_a) or die("Can't get the items");
while ($row_a=pg_fetch_object($result_a))
{
	$sql="select utterance_id, langid from sastre1_cgwords where utterance_id=$row_a->utterance_id and langid!='999'";
	$result=pg_query($db_handle,$sql) or die("Can't get the items");
	while ($row=pg_fetch_object($result))
	{
		$langid[]=$row->langid;
	}
	
	$total=count($langid);
	
	if ($total>0);
	{
		echo $row_a->utterance_id.": ";
		echo $total." (T) - ";
		
		$freq=array_count_values($langid);
		//print_r($freq);
		
	    $my0=(empty($freq[0])) ? 0 : $freq[0];
	    $my2=(empty($freq[2])) ? 0 : $freq[2];
	    $my3=(empty($freq[3])) ? 0 : $freq[3];  
	
		echo $my0." (0) - ";
		echo $my2." (2) - ";
		echo $my3." (3) - ";
		
		$per0=($my0==0) ? 0 : round($my0/$total*100);
		$per2=($my2==0) ? 0 : round($my2/$total*100);
		$per3=($my3==0) ? 0 : round($my3/$total*100);
			
		echo $per0." (%0) - ";
		echo $per2." (%2) - ";
		echo $per3." (%3) - ";
		
		echo "\n";
		
		$sql_w="insert into sastre1_profile (utterance_id, total, my0, my2, my3, per0, per2, per3) values($row_a->utterance_id, $total, $my0, $my2, $my3, $per0, $per2, $per3)";
		$result_w=pg_query($db_handle,$sql_w) or die("Can't get the items");
		
		unset($langid, $total, $freq, $my0, $my2, $my3, $per0, $per2, $per3);
	}
}

?>
