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

// This file writes out datasets from the $utterances table.  NOTE!! This appends data, so if you want to rerun it, delete the existing contents of the file first.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$corpus="patagonia";
$target="inputs/$corpus/beta";

$fp = fopen("{$corpus}trans/hym_$corpus.txt", "a") or die("Can't create the file");

$files=scandir($target);
foreach ($files as $file)
{
	if (preg_match("/.cha/", $file))
	{
		$filename=strtolower(basename(preg_replace("/\..*$/", "", $file)));  // remove the extension
		echo $filename."\n";
		
		fwrite($fp, "\n\n".$filename."\n==========\n"); 

		// Write out the file contents.

		// Get instances of %com
		//$sql_s="select * from $utterances where com!='' order by utterance_id";

		// Get instances of & (marking characters that should be in IPA characters)
		//$sql_s="select * from $utterances where surface ~ '[[:blank:]]&[^=]'";

		// Get instances of xx or xxx where the %eng tier does not contain [...]
		$sql_s="select * from {$filename}_cgutterances where surface~'xxx?' and eng!~'\\\[\.\.\.\\\]'";

		// Get instances of mm
		//$sql_s="select * from {$filename}_cgutterances where surface~'hym '";

		$result_s=pg_query($db_handle,$sql_s);
		while ($row_s=pg_fetch_object($result_s))
		{
			$u=$row_s->utterance_id;
			$surface=$row_s->surface;
			// Edit this if you want to make the target data stand out more.
			//$surface=preg_replace("/([[:blank:]])(&.[^ ]*)/", "$1   |||$2|||   ", $surface);
			$speech=$u.":".$row_s->speaker.":\t".$surface."\n";
			fwrite($fp, $speech);
		/*
			if (isset($row_s->eng))
			{
				$eng="%eng:\t".$row_s->eng."\n";
				fwrite($fp, $eng); 
			}
		/*
			if (isset($row_s->gls))
			{
				$gls="%gls:\t".$row_s->gls."\n";
				fwrite($fp, $gls); 
			}

			if (isset($row_s->mor))
			{
				$mor="%mor:\t".$row_s->mor."\n";
				fwrite($fp, $mor); 
			}

			if (isset($row_s->comment))
			{
				$comment="@Comment:\t".$row_s->comment."\n";
				fwrite($fp, $comment); 
			}
			
			if (isset($row_s->com))
			{
				$comment="%com:\t".$row_s->com."\n";
				fwrite($fp, $comment); 
			}
		*/
			unset($speech, $gls, $eng, $mor, $comment, $auto);
		}
	}
}

fclose($fp);

?>