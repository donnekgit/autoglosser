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

include("../includes/fns.php");
include("/opt/autoglosser/config.php");

$esfile=$_SERVER['argv'][1];
$eswords=$esfile."_eswords";

$sql_table = "
CREATE TABLE $eswords (
    id serial NOT NULL,
    surface character varying(100),
    count bigint,
    lemma character varying(100),
    enlemma character varying(100),
    pos character varying(20),
    gender character varying(20),
    number character varying(20),
    tense character varying(100),
    notes character varying(50),
    clar character varying(100)
);
";

$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$eswords." ADD CONSTRAINT ".$eswords."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>
