<?php

include("../includes/fns.php");
include("/opt/autoglosser/config.php");

function clitics($text)
{      
    $text=preg_replace("/mela$/u", "::mf.1s::f.3s", $text);
    $text=preg_replace("/mele$/u", "::mf.1s::mf.3s", $text);
    $text=preg_replace("/melo$/u", "::mf.1s::mn.3s", $text);
    $text=preg_replace("/melas$/u", "::mf.1s::f.3p", $text);
    $text=preg_replace("/meles$/u", "::mf.1s::mf.3p", $text);
    $text=preg_replace("/melos$/u", "::mf.1s::m.3p", $text);

    $text=preg_replace("/tela$/u", "::mf.2s::f.3s", $text);
    $text=preg_replace("/tele$/u", "::mf.2s::mf.3s", $text);
    $text=preg_replace("/telo$/u", "::mf.2s::mn.3s", $text);
    $text=preg_replace("/telas$/u", "::mf.2s::f.3p", $text);
    $text=preg_replace("/teles$/u", "::mf.2s::mf.3p", $text);
    $text=preg_replace("/telos$/u", "::mf.2s::m.3p", $text);
    $text=preg_replace("/teme$/u", "::mf.2s::mf.1s", $text);
    $text=preg_replace("/tenos$/u", "::mf.2s::mf.1p", $text);

    $text=preg_replace("/sela$/u", "::mf.3s::f.3s", $text);
    $text=preg_replace("/sele$/u", "::mf.3s::mf.3s", $text);
    $text=preg_replace("/selo$/u", "::mf.3s::mn.3s", $text);
    $text=preg_replace("/selas$/u", "::mf.3s::f.3p", $text);
    $text=preg_replace("/seles$/u", "::mf.3s::mf.3p", $text);
    $text=preg_replace("/selos$/u", "::mf.3s::m.3p", $text);
    $text=preg_replace("/seme$/u", "::mf.3s::mf.1s", $text);
    $text=preg_replace("/senos$/u", "::mf.3s::mf.1p", $text);
    $text=preg_replace("/sete$/u", "::mf.3s::mf.2s", $text);
    $text=preg_replace("/seos$/u", "::mf.3s::mf.2p", $text);

    $text=preg_replace("/nosla$/u", "::mf.1p::f.3s", $text);
    $text=preg_replace("/nosle$/u", "::mf.1p::mf.3s", $text);
    $text=preg_replace("/noslo$/u", "::mf.1p::mn.3s", $text);
    $text=preg_replace("/noslas$/u", "::mf.1p::f.3p", $text);
    $text=preg_replace("/nosles$/u", "::mf.1p::mf.3p", $text);
    $text=preg_replace("/noslos$/u", "::mf.1p::m.3p", $text);

    $text=preg_replace("/(?<!m)osla$/u", "::mf.2p::f.3s", $text);  //avoid busquémosle being analysed as busquém+os+le instead of busquémos+le - vblex.imp.p1.pl
    $text=preg_replace("/(?<!m)osle$/u", "::mf.2p::mf.3s", $text);
    $text=preg_replace("/(?<!m)oslo$/u", "::mf.2p::mn.3s", $text);
    $text=preg_replace("/(?<!m)oslas$/u", "::mf.2p::f.3p", $text);
    $text=preg_replace("/(?<!m)osles$/u", "::mf.2p::mf.3p", $text);
    $text=preg_replace("/(?<!m)oslos$/u", "::mf.2p::m.3p", $text);
    $text=preg_replace("/(?<!m)osme$/u", "::mf.2p::mf.1s", $text);
    $text=preg_replace("/(?<!m)osnos$/u", "::mf.2p::mf.1p", $text);

    $text=preg_replace("/la$/u", "::f.3s", $text);
    $text=preg_replace("/le$/u", "::mf.3s", $text);
    $text=preg_replace("/lo$/u", "::mn.3s", $text);
    $text=preg_replace("/las$/u", "::f.3p", $text);
    $text=preg_replace("/les$/u", "::mf.3p", $text);
    $text=preg_replace("/los$/u", "::m.3p", $text);
    $text=preg_replace("/me$/u", "::mf.1s", $text);
    $text=preg_replace("/te$/u", "::mf.2s", $text);
    $text=preg_replace("/se$/u", "::mf.3s", $text);
    $text=preg_replace("/nos$/u", "::mf.1p", $text);
    $text=preg_replace("/os$/u", "::mf.2p", $text);

    return $text;
}

$sql="select * from clitics order by surface";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
    $clitic2="";
    echo $row->surface."\n";
    $decliticised= clitics($row->surface)."\n";
    //echo $decliticised."\n";
    $cut=preg_split('/::/u', $decliticised);
    $verbform=$cut[0];
    $clitic1=$cut[1];
    if (isset($cut[2])) {$clitic2=$cut[2];}
    //echo "Inserting $verbform into verbform, $clitic1 into clitic1, and $clitic2 into clitic2\n";
    $poscut=preg_split('/\+/u', $row->pos);
    $declitpos=$poscut[0];
    //echo $declitpos."\n";
    //echo "===\n";
    $sql2="update clitics set verbform='$verbform', clitic1='$clitic1',  clitic2='$clitic2', declitpos='$declitpos' where id=$row->id";
    $result2=pg_query($db_handle,$sql2) or die("Can't do the insert");
    unset($verbform, $clitic1, $clitic2, $declitpos);
}
    




















?>