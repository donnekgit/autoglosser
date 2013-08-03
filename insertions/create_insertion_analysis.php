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

// include("includes/fns.php");
// include("/opt/autoglosser/config.php");

drop_existing_table(insertion_analysis);

$sql_table = "
CREATE TABLE insertion_analysis (
    insertion_id serial NOT NULL,
    slotlg character varying(50),
    clause_id integer,
    utterance_id integer,
    filename character varying(50),
    word character varying(50),
    gloss character varying(50),
    eprev character varying(10),
    enext character varying(10),
    pos character varying(10),
    surface character varying(100),
    auto character varying(250),
    langid character varying(250),
    speaker character varying(10)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY insertion_analysis ADD CONSTRAINT insertion_analysis_pk PRIMARY KEY (insertion_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>