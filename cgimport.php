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

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// Scan the file for sub-tiers.
scan_tiers($chafile, $filename);

// Create the utterances table.
echo "*\n*\nCreating the $utterances table\n*\n*\n";
include("create_cgutterances.php");

// Open a logfile.
$fp = fopen("outputs/".$filename."/".$utterances.".txt", "w") or die("Can't create the file");

$i=1;  // start counter for utterances

$lines=file($chafile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	if (preg_match("/^\*/", $line))
    {
		fwrite($fp, "(".$i.") ".$line);
	}
	
	// Sort out punctuation
	//  fix_punctuation() is incorrect and not needed.  In any case both should be applied later, to the surface segment only.
	//$line=fix_punctuation($line);  
	//$line=fix_transcription($line);
	
	// Collect utterances in the main language
    if (preg_match("/^\*/", $line))
    {
        $surface_line=preg_split('/:\s*\t/', $line);  // Split at the colon after the speaker_id.
        $speaker=preg_replace("/\*/", "", $surface_line[0]);  // Delete the asterisk before the speaker_id.
        $rest=$surface_line[1];
        
        list($surface_pc, $timing)=explode('', $rest);  // NAK is Unicode 0015; split at this character.
        // Strip off and store the precode, if any
		if (preg_match("/^\[- [a-z]{3}\]/", $surface_pc))  // If the segment contains square brackets with a dash and a three-letter code.
		{
			list($precode, $surface)=explode(']', $surface_pc, 2);
			// We need to limit the explodes, or all items in square brackets will be hit, hence specify a split into two pieces.
			$precode=trim(preg_replace("/\[- /", "", $precode));  // Delete [- from the precode.
		}
		else
		{
			$surface=fix_transcription($surface_pc);  // Applied here so that it only bites on the surface segment, not on the translation or comments.
		}

        if (isset($timing))
		{
			$timing=preg_replace("/(%|\").*_/U", "", $timing);  // U for ungreedy; this line handles the Siarad layout, which looks like this: %snd:"Stammers4"_3878_4423; some lines are missing the "%snd:" part
			list($durbegin, $durend)=explode('_', $timing);
			$duration=$durend-$durbegin;
		}
		else
		{
			// On some lines the sound bullet is completely missing
			$durend=0;
			$durbegin=0;
			$duration=0;
		}

		//if (empty($sourcefile)){$sourcefile=$filename;}
		
        $speaker=trim(pg_escape_string($speaker));
        $surface=trim(pg_escape_string($surface));
		$surface=preg_replace("/\s+/", " ", $surface);  // Squash more than one space down to one.
		$sourcefile=strtolower(trim(pg_escape_string($sourcefile)));

        $sql="insert into $utterances (speaker, duration, surface, filename, durbegin, durend, precode) values ('$speaker', '$duration', '$surface', '$filename', '$durbegin', '$durend', '$precode')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");
		
		echo "(".$i.") ".$speaker.": ".$surface."\n";
		//fwrite($fp, "(".$i.") ".$surface."\n\n");

		unset($precode);

		$i++;
    }

    // Collect lines belonging to identified sub-tiers.
    $tiers=file("outputs/".$filename."/".$filename."_tiers.txt", FILE_SKIP_EMPTY_LINES);
    foreach ($tiers as $tier)
    {
        //include("import/import_".trim($tier).".php");
        $tier=trim($tier);
        if (preg_match("/^%$tier/", $line))
        {
            $tierinfo=preg_split('/:\t/', $line);
            $tierinfo=$tierinfo[1];
            $tierinfo=trim(pg_escape_string($tierinfo));

            echo $tierinfo."\n";
            fwrite($fp, "(".$i.") ".$tierinfo."\n\n");

            $sql="update $utterances set $tier='$tierinfo' where utterance_id=currval('".$utterances."_utterance_id_seq')";
            $result=pg_query($db_handle,$sql) or die("Can't insert the items");
        }
    }

    // Collect comments, if any.  FIXME: In a series of comments, the last one will overwrite previous ones - we need to concatenate these, or write them to a separate table using the utterance_id as the key.
	if (preg_match("/^@Comment/", $line) or preg_match("/^%com/", $line) )
    {
        $comment=preg_split('/:\t/', $line);
        $comment=$comment[1];       
        $comment=trim(pg_escape_string($comment));

		echo $comment."\n";
        
        $sql="update $utterances set comment='$comment' where utterance_id=currval('".$utterances."_utterance_id_seq')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");  
    }

	unset($durbegin, $durend, $duration); 
  
}

fclose($fp);

?>
