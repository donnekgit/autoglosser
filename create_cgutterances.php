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

$sqlfields=tier_fields($filename, "text");
//echo "SQL fields: ".$sqlfields."\n";

drop_existing_table($utterances);
//echo $utterances."<br/>";

// CHECK: why is duration below a charvar instead of an integer?

$sql_table = "
CREATE TABLE $utterances (
    utterance_id serial NOT NULL,
    filename character varying(50),
    speaker character varying(10),
    surface text,
    $sqlfields
    comment text,
    durbegin integer,
    durend integer,
    duration character varying(50),
    precode character varying(10)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$utterances." ADD CONSTRAINT ".$utterances."_pk PRIMARY KEY (utterance_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

include("includes/cleanfns.php");  // Generate dummy line/wordclean functions for any sub-tiers.

?>
