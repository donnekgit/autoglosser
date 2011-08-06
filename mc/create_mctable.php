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

// This script creates a table to hold 2- or 3-character sequences.  A name for the subset of material can be passed in as the first argument, eg php create_mctable.php <subset>.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$subset=$_SERVER['argv'][1];
$mctable="mc_".$subset;

drop_existing_table($mctable);

$sql_table = "
CREATE TABLE $mctable (
    id serial NOT NULL,
    filename character varying(50),
    utterance_id integer,
    location integer,
    surface1 character varying(100),
    surface2 character varying(100),
    surface3 character varying(100),
    auto1 character varying(250),
	auto2 character varying(250),
	auto3 character varying(250),
    langid1 character varying(20),
    langid2 character varying(20),
    langid3 character varying(20),
	use character varying(20)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$mctable." ADD CONSTRAINT ".$mctable."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);


?>
