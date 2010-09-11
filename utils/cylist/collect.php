<?php
     
//Copyright 2006 Kevin Donnelly, kevin@dotmon.com

/*
This file is part of Eurfa, a free, high-quality Welsh dictionary.

Eurfa is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

Eurfa is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

A copy of the GNU General Public License is included along with Eurfa
in the file COPYING; if this file is missing, a copy is available at 
http://www.gnu.org/licenses/gpl.txt, or you can write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA.
*/

/*
This script generates a basic Welsh wordlist.  It collects entries from 4 tables: canonical (all non-verb
items), berfau (verbs in Konjugator with detailed conjugation info), virreg (irregular verbs, listed 
separately in Konjugator), and vplus (verbs which need to be added to berfau, but have not made it 
there yet).  Each table is read in turn, and used to build up a super-table (eurfa_nmni) of non-mutated, 
non-inflected forms. 
*/
 
include("../../includes/fns.php");
include("/opt/autoglosser/config.php");

drop_existing_table(eurfa_nmni);

$sql_table = "
CREATE TABLE eurfa_nmni (
    id serial NOT NULL,
    surface character varying (100),
    lemma character varying (100),
    enlemma character varying (100),
    clar character varying (100),
    sorp character varying (100),
    pos character varying (20),
    gender character varying (20),
    number character varying (50),
    tense character varying (100),
    notes character varying (50),
    extra character varying (100),
    srctab character varying (20)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY eurfa_nmni ADD CONSTRAINT eurfa_nmni_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

$sql_can="select * from canonical order by welsh";
$result_can=pg_query($db_handle, $sql_can);
while ($row_can=pg_fetch_object($result_can))
{
    $row_can->welsh=trim(pg_escape_string($row_can->welsh));
    $row_can->english=trim(pg_escape_string($row_can->english));
    $row_can->clar=trim(pg_escape_string($row_can->clar));
    $row_can->sorp=trim(pg_escape_string($row_can->sorp));

    echo $row_can->welsh."\n";
                    
    $sql1="insert into eurfa_nmni(surface, enlemma, clar, sorp, pos, gender, number, srctab) values ('$row_can->welsh', '$row_can->english', '$row_can->clar', '$row_can->sorp', '$row_can->pos', '$row_can->gender', '$row_can->num', 'can')"; 
    $result1=pg_query($db_handle, $sql1);  
}

/*  Current version of canonical already has the plurals added
$sql_pl="select * from plurals order by welsh";
$result_pl=pg_query($db_handle, $sql_pl);
while ($row_pl=pg_fetch_object($result_pl))
{
    $row_pl->welsh=trim(pg_escape_string($row_pl->welsh));
    $row_pl->english=trim(pg_escape_string($row_pl->english));
    $row_pl->clar=trim(pg_escape_string($row_pl->clar));
    $row_pl->sorp=trim(pg_escape_string($row_pl->sorp));

    echo $row_pl->welsh."\n";
                    
    $sql5="insert into eurfa_nmni(surface, enlemma, clar, sorp, pos, gender, number, srctab) values ('$row_pl->welsh', '$row_pl->english', 'row_pl->clar', '$row_pl->sorp', '$row_pl->pos', '$row_pl->gender', '$row_pl->num', 'plu')"; 
    $result5=pg_query($db_handle, $sql5);  
}
*/
/*
$sql_vpl="select * from vplus order by welsh_pre";
$result_vpl=pg_query($db_handle, $sql_vpl);
while ($row_vpl=pg_fetch_object($result_vpl))
{
    $row_vpl->welsh_pre=trim(pg_escape_string($row_vpl->welsh_pre));
    $row_vpl->english_pre=trim(pg_escape_string($row_vpl->english_pre));
    $row_vpl->english_post=trim(pg_escape_string($row_vpl->english_post));

    echo $row_vpl->welsh_pre."\n";
    
    $sql2="insert into eurfa_nmni(surface, lemma, enlemma, clar, pos, tense, srctab) values ('$row_vpl->welsh_pre', '$row_vpl->welsh_pre', '$row_vpl->english_pre', '$row_vpl->english_post', 'v', 'infin', 'vpl')"; 
    $result2=pg_query($db_handle, $sql2);		
}

$sql_vir="select * from virreg order by welsh_pre";
$result_vir=pg_query($db_handle, $sql_vir);
while ($row_vir=pg_fetch_object($result_vir))
{
    $row_vir->welsh_pre=trim(pg_escape_string($row_vir->welsh_pre));
    $row_vir->english_pre=trim(pg_escape_string($row_vir->english_pre));
    $row_vir->english_post=trim(pg_escape_string($row_vir->english_post));

    echo $row_vir->welsh_pre."\n";
    
    $sql3="insert into eurfa_nmni(surface, lemma, enlemma, clar, pos, tense, srctab) values ('$row_vir->welsh_pre', '$row_vir->welsh_pre', '$row_vir->english_pre', '$row_vir->english_post', 'v', 'infin', 'vir')"; 
    $result3=pg_query($db_handle, $sql3);
}

$sql_ber="select * from berfau order by berf_infin";
$result_ber=pg_query($db_handle, $sql_ber);
while ($row_ber=pg_fetch_object($result_ber))
{
    $row_ber->berf_infin=trim(pg_escape_string($row_ber->berf_infin));
    $ber_english=trim(pg_escape_string($row_ber->berf_ystyr));
    $ber_clar=trim(pg_escape_string($row_ber->berf_post_ystyr));

    echo $row_ber->berf_infin."\n";
            
    $sql4="insert into eurfa_nmni(surface, lemma, enlemma, clar, pos, tense, srctab) values ('$row_ber->berf_infin', '$row_ber->berf_infin', '$ber_english', '$ber_clar', 'v', 'infin', 'ber')"; 
    $result4=pg_query($db_handle, $sql4);		
}

//Insert lemmas
$sql_eur="select * from eurfa_nmni order by surface";
$result_eur=pg_query($db_handle, $sql_eur);
while ($row_eur=pg_fetch_object($result_eur))
{
    echo $row_eur->surface."\n";
    $sorp=trim(pg_escape_string($row_eur->sorp));
    $surface=trim(pg_escape_string($row_eur->surface));
    if ($row_eur->number=='p')
    {
        $sql_s="update eurfa_nmni set lemma='$sorp' where id=$row_eur->id";
        $result_s=pg_query($db_handle, $sql_s);
        unset($sorp);
    }
    else
    {
        $sql_p="update eurfa_nmni set lemma='$surface' where id=$row_eur->id";
        $result_p=pg_query($db_handle, $sql_p);
        unset($surface);
    }
}

?>