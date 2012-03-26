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

include("includes/fns.php");
include("/opt/autoglosser/config.php");

//$cyp_count="cyp_count";
$cyp_count="siarad_count";

drop_existing_table($cyp_count);

$sql_table = "
CREATE TABLE $cyp_count (
    id serial NOT NULL,
    filename character varying(50),
    speaker character varying(3),
    clauses integer,
    external integer,
    internal integer
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$cyp_count." ADD CONSTRAINT ".$cyp_count."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>
