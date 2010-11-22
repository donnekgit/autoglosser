<?php

include("../includes/fns.php");
include("/opt/autoglosser/config.php");

$esfile=$_SERVER['argv'][1];
$eswords=$esfile."_eswords";

$sql_table = "
CREATE TABLE $eswords (
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
ALTER TABLE ONLY ".$eswords." ADD CONSTRAINT ".$eswords."_pk PRIMARY KEY (id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>
