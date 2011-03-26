<?php

/*
Copyright Kevin Donnelly 2010.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

drop_existing_table($cgfinished);
//echo $utterances."<br/>";

$sql_table = "
CREATE TABLE $cgfinished (
    id serial NOT NULL,
	utterance_id integer,
	location integer,
	surface character varying(100),
    lemma character varying(100),
    enlemma character varying(100),
    pos character varying(200),
    extra character varying(100),
	seg character varying(100)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$cgfinished." ADD CONSTRAINT ".$cgfinished."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>