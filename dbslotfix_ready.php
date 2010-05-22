<?php

/*
Copyright Kevin Donnelly 2009.

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

include("includes/fns.php");
include("/opt/siarad/config.php");

$tablename=$_POST['tablename'];
echo $tablename."<br />";

$utterances=$tablename."_utterances";
$words=$tablename."_words";

drop_existing_table($words);

$sql_table = "
CREATE TABLE $words (
    word_id serial NOT NULL,
    utterance_id integer,
    location integer,
    welsh character varying(100),
    gloss character varying(250),
    glossloc integer,
    speaker character varying(10),
    langid character varying(10),
	chafile character varying(50)
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$words." ADD CONSTRAINT ".$words."_pk PRIMARY KEY (word_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

include("wordify.php");

?>

The utterances in <b>".$tablename."_utterances</b> have been split into words in <b>".$tablename."_words</b>.<br /><br />

If your file is not already glossed, you should now autogloss it, by clicking the button below .... <br /><br />

<div class="form">
<form action="domyglossingforme.php" method="POST">
	<input type=hidden name="tablename" value="<?php echo $tablename ?>"><br/>
	<input name="submit" type="submit" value="Autogloss this file">
</form>
</div>

If your file is already glossed, and you are ready to fix the alignment between words and glosses, click the button below ...<br />(Note that aligning a non-glossed file will not do any damage, but is pointless, since there are no glosses to align.)

<div class="form">
<form action="finalise.php" method="POST">
	<input type=hidden name="tablename" value="<?php echo $tablename ?>"><br/>
	<input name="submit" type="submit" value="Align words and existing glosses">
</form>
</div>


























