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

//$filename=$_SERVER['argv'][1];
//$cognates=$filename."_cognates";
$rbrul="jumbo_cognates_siarad";

drop_existing_table($rbrul);

$sql_table = "
CREATE TABLE $rbrul (
	speaker character varying(10),
	utt_no integer,
	cl_in_utt integer,
	cl_start integer,
	cl_end integer,
	spkturn_no integer,
	cl_in_spkturn integer,
	file character varying(50),
	surface character varying(250) ,
	autogloss text,
	matrix_lg character varying(100),
	linguality character varying(100),
	dv character varying(100),
	verb_morph character varying(250),
	qlang character varying(100),
	dob character varying(20),
	gender character varying(5),
	age character varying(100),
	work character varying(100),
	brought_up character varying(100),
	main_area character varying(100),
	education character varying(100),
	welsh_since character varying(100),
	english_since character varying(100),
	welsh_ability character varying(100),
	english_ability character varying(100),
	mother_spoke character varying(100),
	father_spoke character varying(100),
	guardian_spoke character varying(100),
	primary_lg character varying(100),
	secondary_lg character varying(100),
	welsh_modern character varying(100),
	welsh_useful character varying(100),
	welsh_friendly character varying(100),
	welsh_inspiring character varying(100),
	welsh_beautiful character varying(100),
	welsh_influential character varying(100),
	english_modern character varying(100),
	english_useful character varying(100),
	english_friendly character varying(100),
	english_inspiring character varying(100),
	english_beautiful character varying(100),
	english_influential character varying(100),
	contact1 character varying(100),
	contact2 character varying(100),
	contact3 character varying(100),
	contact4 character varying(100),
	contact5 character varying(100),
	nat_id character varying(100),
	i_separate character varying(100),
	shdbe_separate character varying(100)
);
";
$result_table=pg_query($db_handle, $sql_table);

// $sql_pkey = "
// ALTER TABLE ONLY ".$rbrul." ADD CONSTRAINT ".$rbrul."_pk PRIMARY KEY (rb_id);
// ";
// $result_pkey=pg_query($db_handle, $sql_pkey);

?>