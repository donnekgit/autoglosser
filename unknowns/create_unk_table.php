<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
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

$unknowns=$_SERVER['argv'][1];

include("includes/fns.php");
include("/opt/autoglosser/config.php");

drop_existing_table($unknowns);
//echo $utterances."<br/>";

$sql_table = "
CREATE TABLE $unknowns (
    id serial NOT NULL,
    surface character varying(100),
    lemma character varying(100),
    enlemma character varying(100),
    clar character varying(100),
    pos character varying(50),
    gender character varying(20),
    number character varying(20),
    tense character varying(50),
    notes character varying(50),
    extra character varying(100),
    filename character varying(50)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$unknowns." ADD CONSTRAINT ".$unknowns."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>