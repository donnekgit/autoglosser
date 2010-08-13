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

//Output table: $filename_cgutterances
//Output file: $filename_cgutterances.txt

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

echo "*\n*\nCreating the $utterances table\n*\n*\n";
include("create_cgutterances.php");

// Fix Microsoft Windows line-breaks
//exec("utils/sed_joinlines ".$chafile);  // not working reliably - truncating the file; do manually for the time being

$fp = fopen("outputs/".$filename."/".$utterances.".txt", "w") or die("Can't create the file");

$i=1;  // start counter for utterances

$lines=file($chafile,FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line)
{
	if (preg_match("/^\*/", $line))
    {
		fwrite($fp, "(".$i.") ".$line);
	}
	
	// Sort out punctuation
	$line=fix_punctuation($line);
	$line=fix_transcription($line);
	
	// Collect utterances in the main language
    if (preg_match("/^\*/", $line))
    {
        $mainlang_line=preg_split('/:\t/', $line);
        $speaker=preg_replace("/\*/", "", $mainlang_line[0]);
        $rest=$mainlang_line[1];
        
        list($mainlang, $timing)=explode('', $rest); //NAK is Unicode 0015
        
        if (isset($timing))
		{
			/* For Siarad texts
			if (preg_match('/snd/', $timing))
			{
				list($snd, $sourcefile, $milli)=explode('"', $timing);
				list($nowt, $durbegin, $durend)=explode('_', $milli);
				$duration=$durend-$durbegin;
			}
			else
			// On some lines the marker %snd may be missing
			{
				list($durbegin, $durend)=explode('_', $timing);
				$duration=$durend-$durbegin;
			}
			*/ //End of Siarad section
			$timing=preg_replace("/(%|\").*_/U", "", $timing);  // U for ungreedy; this line is to handle the Siarad layout, which looks like this: %snd:"Stammers4"_3878_4423; some lines are missing the "%snd:" part
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
        $mainlang=trim(pg_escape_string($mainlang));
		$mainlang=preg_replace("/\s+/", " ", $mainlang);
		$sourcefile=strtolower(trim(pg_escape_string($sourcefile)));

        $sql="insert into $utterances (speaker, duration, mainlang, filename, durbegin, durend) values ('$speaker', '$duration', '$mainlang', '$filename', '$durbegin', '$durend')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");
		
		echo "(".$i.") ".$mainlang."\n";
		//fwrite($fp, "(".$i.") ".$mainlang."\n\n");

		$i++;
    }
    
	// Collect glosses
    elseif (preg_match("/^%(gls|mor)/", $line))
    {
        $gloss=preg_split('/:\t/', $line);
        $gloss=$gloss[1];
        
		// Remove non-morphological strings
		//$gloss=preg_replace('/ x{1,3} /', ' ', $gloss);
		// Moved to rewrite_utterances.php

        $gloss=trim(pg_escape_string($gloss));

		echo $gloss."\n";
		fwrite($fp, "(".$i.") ".$gloss."\n\n");

        $sql="update $utterances set gloss='$gloss' where utterance_id=currval('".$utterances."_utterance_id_seq')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");
    }
    
    // Collect English interpretations
    elseif (preg_match("/^%eng/", $line))
    {
        $english=preg_split('/:\t/', $line);
        $english=$english[1];
        $english=trim(pg_escape_string($english));

		echo $english."\n";
        
        $sql="update $utterances set english='$english' where utterance_id=currval('".$utterances."_utterance_id_seq')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");    
    }
    
    // Collect comments, if any.  FIXME: In a series of comments, the last one will overwrite previous ones - we need to concatenate these, or write them to a separate table using the utterance_id as the key.
	elseif (preg_match("/^@Comment/", $line) or preg_match("/^%com/", $line) )
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
