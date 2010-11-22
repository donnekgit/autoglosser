<?php

include("../includes/fns.php");
include("/opt/autoglosser/config.php");

$enfile=$_SERVER['argv'][1];
$enwords=$enfile."_enwords";

$sql_table = "
CREATE TABLE $enwords (
    id serial NOT NULL,
    surface character varying(100),
    count bigint,
    lemma character varying(100),
    enlemma character varying(100),
    pos character varying(20),
    gender character varying(20),
    number character varying(20),
    tense character varying(100),
    notes character varying(50),
    clar character varying(100)
);
";

$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$enwords." ADD CONSTRAINT ".$enwords."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>
