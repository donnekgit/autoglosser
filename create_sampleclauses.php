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

$sampleclauses=$filename."_sampleclauses";

drop_existing_table($sampleclauses);

$sql_table = "
CREATE TABLE $sampleclauses (
    word_id serial NOT NULL,
    utterance_id integer,
    location integer,
    surface character varying(100),
    auto character varying(250),
    speaker character varying(10),
    langid character varying(20),
	filename character varying(50),
	clause character varying(50),
	clauseno integer
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$sampleclauses." ADD CONSTRAINT ".$sampleclauses."_pk PRIMARY KEY (word_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>