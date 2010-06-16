<?php

drop_existing_table($words);

$sql_table = "
CREATE TABLE $words (
    word_id serial NOT NULL,
    utterance_id integer,
    location integer,
    mainlang character varying(100),
    gloss character varying(250),
    glossloc integer,
    speaker character varying(10),
    langid character varying(10),
	filename character varying(50)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$words." ADD CONSTRAINT ".$words."_pk PRIMARY KEY (word_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

?>