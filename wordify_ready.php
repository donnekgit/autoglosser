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

$chafilepath=$_POST['chafilepath'];  // Need to check the input.
echo $chafilepath."<br/>";
/*$directory=dirname(__FILE__);
$filename=basename(__FILE__);
echo $directory."<br/>";
echo $filename."<br/>";
$directory=dirname($chafilepath);
$filename=basename($chafilepath);
echo $directory."<br/>";
echo $filename."<br/>";*/

//print_r($_POST);

$chafile=basename($chafilepath);
list($tablename, $ext)=explode('.', strtolower($chafile));

echo "The db table will be called: ".$tablename."_utterances";
$utterances=$tablename."_utterances";

drop_existing_table($utterances);
//echo $utterances."<br/>";

$sql_table = "
CREATE TABLE $utterances (
    utterance_id serial NOT NULL,
    chafile character varying(50),
    sample_id integer,
    speaker character varying(10),
    welsh text,
    gloss text,
    english text,
    comment text,
    line_num integer,
    durbegin integer,
    durend integer,
    duration character varying(50) 
);
";
$result_table=pg_query($db_handle, $sql_table);

$sql_pkey = "
ALTER TABLE ONLY ".$utterances." ADD CONSTRAINT ".$utterances."_pk PRIMARY KEY (utterance_id);
";
$result_pkey=pg_query($db_handle, $sql_pkey);

include("import.php");

//header( 'Location: dbslotfix_ready.php?newchafile=$newchafile' ) ;

echo "The .cha file <b>".$newchafile."</b> has been imported into <b>".$utterances."</b><br />If you want to split each utterance into words, click the button below ...";

?>

<div class="form">
<form action="dbslotfix_ready.php" method="POST">
	<input type=hidden name="tablename" value="<?php echo $tablename ?>"><br/>
	<input name="submit" type="submit" value="Wordify the.cha file">
</form>
</div>



