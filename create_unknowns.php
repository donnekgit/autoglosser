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


if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$unknowns=$filename."_unknowns";

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
    extra character varying(100)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$unknowns." ADD CONSTRAINT ".$unknowns."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

$sql_fill="insert into $unknowns (surface) select surface from $words where auto='unk' and langid='' group by surface order by surface";
$result_fill=pg_query($db_handle, $sql_fill);

?>