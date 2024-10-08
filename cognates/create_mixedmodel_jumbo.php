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

drop_existing_table(mixedmodel_jumbo_mirjam);

$sql_table = "
CREATE TABLE mixedmodel_jumbo_mirjam (
    mm_id integer,
    filename character varying(50),
    speaker character varying(10),
    spkturn integer,
    clspk integer,
    tally integer,
    clause_id integer,
	cl_len integer,
	verblg character varying (10),
	contains_t character varying (10),
	count_t integer,
	t_no integer,
	t_loc integer,
	t_v character varying(20),
	trigword character varying(50),
	t_len integer,
	nt_sum integer,
	cswitch character varying(10),
    slotlg character varying(50),
    ext_cs character varying(10),
    ext_cs_bs character varying(10),
    ext_cs_f character varying(10),
    ext_cs_f_bs character varying(10),
    int_cs character varying(10),
    cl_lg character varying(10),
    surface character varying(100),
    all_t integer,
    all_w integer,
    spk_t integer,
    spk_w integer,
    all_cs integer,
    all_cl integer,
    spk_cs integer,
    spk_cl integer
);
";
$result_table=pg_query($db_handle, $sql_table);

// $sql_pkey = "
// ALTER TABLE ONLY mixedmodel_jumbo ADD CONSTRAINT mixedmodel_jumbo_pk PRIMARY KEY (mj_id);
// CREATE SEQUENCE mixedmodel_jumbo_seq
//     START WITH 1
//     INCREMENT BY 1
//     NO MAXVALUE
//     NO MINVALUE
//     CACHE 1;
// ALTER SEQUENCE mixedmodel_jumbo_seq OWNED BY mixedmodel_jumbo.mj_id;
// ALTER TABLE mixedmodel_jumbo ALTER COLUMN mj_id SET DEFAULT nextval('mixedmodel_jumbo_seq'::regclass);
// ";
// $result_pkey=pg_query($db_handle, $sql_pkey);

?>
