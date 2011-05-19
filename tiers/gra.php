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