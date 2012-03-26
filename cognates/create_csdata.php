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

//include("includes/fns.php");
//include("/opt/autoglosser/config.php");

//$filename=$_SERVER['argv'][1];
//$cognates=$filename."_cognates";

drop_existing_table($csdata);

$sql_table = "
CREATE TABLE $csdata (
    clause_id serial NOT NULL,
    spkturn integer,
    clspk integer,
    newturn character varying(5),
    utterance_id integer,
    minloc integer,
    maxloc integer,
    f_lg character varying(20),
    p_lg character varying(20),
    word_lg_ser character varying(200),
    external character varying(10),
    internal character varying(10),
    speaker character varying(10),
    surface character varying(100),
    auto character varying(250),
	filename character varying(50)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$csdata." ADD CONSTRAINT ".$csdata."_pk PRIMARY KEY (clause_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>