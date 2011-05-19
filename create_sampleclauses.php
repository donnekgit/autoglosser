<?php

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