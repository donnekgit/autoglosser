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

include("includes/fns.php");
include("/opt/siarad/config.php");

$chafile="Stammers4.cha";
list($filename, $ext)=explode('.', strtolower($chafile));
$utterances=strtolower($filename."_cgutterances");
$words=strtolower($filename."_cgwords");

//$fp = fopen("outputs/".$filename."_log.txt", "w") or die("Can't create the file");

echo "*\n*\n*\n*\n*\nCreating the $utterances table\n*\n*\n*\n*\n*\n";
include("create_cgutterances.php");

echo "*\n*\n*\n*\n*\nImporting $chafile into $utterances\n*\n*\n*\n*\n*\n";
include("cgimport.php");

echo "*\n*\n*\n*\n*\nCreating the $words table\n*\n*\n*\n*\n*\n";
include("create_cgwords.php");

echo "*\n*\n*\n*\n*\nCleaning and wordifying the utterance lines\n*\n*\n*\n*\n*\n";
include("rewrite_utterances.php");

echo "*\n*\n*\n*\n*\nDoing dictionary lookup and generating CG cohorts\n*\n*\n*\n*\n*\n";
include("write_cohorts.php");

echo "*\n*\n*\n*\n*\nApplying the grammar to disambiguate\n*\n*\n*\n*\n*\n";
include("apply_cg.php");




//fclose($fp);

?>
