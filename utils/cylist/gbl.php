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

// This script transfers the entries in gbl to a new table eurfa_gbl that is better laid out for cylist.  Note that this script will take around half-an-hour to run.
     
include("../../includes/fns.php");
include("/opt/autoglosser/config.php");

drop_existing_table(eurfa_gbl);

$sql_table = "
CREATE TABLE eurfa_gbl (
    id serial NOT NULL,
    surface character varying (100),
    lemma character varying (100),
    enlemma character varying (100),
    clar character varying (100),
    pos character varying (20),
    gender character varying (20),
    number character varying (50),
    tense character varying (100),
    notes character varying (50),
    extra character varying (100)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY eurfa_gbl ADD CONSTRAINT eurfa_gbl_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

$sql_gbl="select * from gbl order by berf_ffurf";
$result_gbl=pg_query($db_handle, $sql_gbl);
while ($row_gbl=pg_fetch_object($result_gbl))
{
    $surface=trim(pg_escape_string($row_gbl->berf_ffurf));
    $enlemma=trim(pg_escape_string($row_gbl->berf_ystyr));
    $clar=trim(pg_escape_string($row_gbl->berf_post_ystyr));
    $lemma=trim(pg_escape_string($row_gbl->berf_infin));
    $number=trim(pg_escape_string($row_gbl->end_pos_pers.$row_gbl->end_pos_num));
    $tense=trim(pg_escape_string($row_gbl->end_pos_tense));
    $notes=trim(pg_escape_string($row_gbl->end_pos_type));

    echo $surface."\n";

    $sql_base="insert into eurfa_gbl(surface, lemma, enlemma, clar, pos, number, tense, notes) values ('$surface', '$lemma', '$enlemma', '$clar', 'v', '$number', '$tense', '$notes')"; 
    $result_base=pg_query($db_handle, $sql_base);   
} // end while loop
	
?>