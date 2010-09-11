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

// This script transfers the entries in eurfa_gbl and eurfa_nmni to the cylist table.
     
include("../../includes/fns.php");
include("/opt/autoglosser/config.php");

drop_existing_table(cylist);

$sql_table = "
CREATE TABLE cylist (
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
ALTER TABLE ONLY cylist ADD CONSTRAINT cylist_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

$sql_gbl="insert into cylist (surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra) select surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra from eurfa_gbl";
$result_gbl=pg_query($db_handle, $sql_gbl);

$sql_nmni="insert into cylist (surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra) select surface, lemma, enlemma, clar, pos, gender, number, tense, notes, extra from eurfa_nmni";
$result_nmni=pg_query($db_handle, $sql_nmni);

?>