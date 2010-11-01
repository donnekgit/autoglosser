<?php

// This file handles the %gra (grammar) tier of the Manchester corpus on Talkbank.  It may need to be adjusted for other corpora if they use different conventions.

// Get existing %mor entries and use them to populate an array
$sqlg="select * from $words where utterance_id=$row->utterance_id order by location";
$resultg=pg_query($db_handle,$sqlg) or die("Can't insert the items");
while ($rowg=pg_fetch_object($resultg))
{
    $myr[]=trim($rowg->mor);
}
//print_r($myr);

// Make an array of entries with a tilde - the equivalent entries in %gra need to be combined
while(list($k,$v)=each($myr))
{
    if (preg_match("/~/", $v))
    {
        $tilde[]=$k;
    }
}
//print_r($tilde);

// Make an array of the %gra entries
$mybits=explode(' ', $row->gra);
//print_r($mybits);

// For each entry with a tilde, combine its equivalent in the %gra array with the one following, and reindex the array
foreach ($tilde as $value)
{
    $mybits[$value]=$mybits[$value]."~".$mybits[$value+1];
    unset($mybits[$value+1]);
    echo $mybits[$value+1]."\n";
    $mybits=array_values($mybits);
}
//print_r($mybits);

// Update the cgwords table with the %gra entries
while(list($mykey,$myvalue)=each($mybits))
{
    $sqli="update $words set gra='$myvalue' where utterance_id=$row->utterance_id and location=$mykey+1";
    $resulti=pg_query($db_handle,$sqli) or die("Can't insert the items");
}

unset($myr, $tilde, $mybits, $k, $v, $key, $value, $mykey, $myvalue);

?>