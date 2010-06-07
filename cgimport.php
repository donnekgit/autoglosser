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
//Output file: none

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

echo "*\n*\nCreating the $utterances table\n*\n*\n";
include("create_cgutterances.php");

$lines=file($chafile,FILE_SKIP_EMPTY_LINES);
       
foreach ($lines as $line_num => $line)
{
	// Sort out punctuation
	fix_punctuation($line);
	fix_transcription($line);
	
	// Collect utterances in the main language - uncomment the commented lines to get some help with debugging

    if (preg_match("/^\*/", $line))
    {
		//echo "This is the main language.<br/>";
        $mainlang_line=preg_split('/:\t/', $line);
        $speaker=preg_replace("/\*/", "", $mainlang_line[0]);
        $rest=$mainlang_line[1];
        //echo "Speaker: ".htmlspecialchars($speaker)."<br/>";
        
        list($mainlang, $timing)=explode('', $rest); //NAK is Unicode 0015
        
        /*
        $mainlang_bits=explode(' ', $mainlang);
        array_pop($mainlang_bits);
        $i=1;
        foreach ($mainlang_bits as $mainlang_value)
        {
            echo "The word in ".$i." (total: ".count($mainlang_bits).") is: ".htmlspecialchars($mainlang_value)."<br>";
            $i=++$i;
        }
        */
        
		$line_num=$line_num +1;
		//echo $line_num.": ".$timing."<br/>";

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

		if (empty($sourcefile)){$sourcefile=$filename;}
		
        //echo "<br/>Duration of this utterance: ".$durbegin." to ".$durend." (".$duration.")<br/><br/>";

        $speaker=trim(pg_escape_string($speaker));
        $mainlang=trim(pg_escape_string($mainlang));
		$mainlang=preg_replace("/\s+/", " ", $mainlang);
		$sourcefile=strtolower(trim(pg_escape_string($sourcefile)));
        $line_num=$line_num + 1;

		echo "(".$line_num.") ".$mainlang."\n";

        $sql="insert into $utterances (speaker, duration, mainlang, line_num, sourcefile, durbegin, durend) values ('$speaker',
'$duration', '$mainlang', '$line_num', '$sourcefile', '$durbegin', '$durend')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");
    }
    
	// Collect glosses

    elseif (preg_match("/^%gls/", $line))
    {
        //echo "This is a tagged gloss.<br/>";
        $gloss=preg_split('/:\t/', $line);
        $gloss=$gloss[1];
        
        /*
        echo $gloss."<br/>";
        $gloss_bits=explode(' ', $gloss);
        $i=1;
        foreach ($gloss_bits as $gloss_value)
        {
            echo "The word in ".$i." (total: ".count($gloss_bits).") is: ".htmlspecialchars($gloss_value)."<br>";
            $i=++$i;
        }
        */
		// Remove non-morphological strings
		$gloss=preg_replace('/ x{1,3} /', ' ', $gloss);
        $gloss=trim(pg_escape_string($gloss));

		echo $gloss."\n";

        $sql="update $utterances set gloss='$gloss' where utterance_id=currval('".$utterances."_utterance_id_seq')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");
    }
    
    // Collect English interpretations
    
    elseif (preg_match("/^%eng/", $line))
    {
        //echo "This is the English.<br/>";
        $english=preg_split('/:\t/', $line);
        $english=$english[1];
        //echo $english."<br/><hr/>";
        
        $english=trim(pg_escape_string($english));

		echo $english."\n";
        
        $sql="update $utterances set english='$english' where utterance_id=currval('".$utterances."_utterance_id_seq')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");    
    }
    
    // Collect comments, if any.  FIXME: In a series of comments, the last one will overwrite previous ones - we need to concatenate these, or write them to a separate table using the utterance_id as the key.

	elseif (preg_match("/^@Comment/", $line) or preg_match("/^%com/", $line) )
    {
        //echo "This is a comment line.<br/>";
        $comment=preg_split('/:\t/', $line);
        $comment=$comment[1];
        //echo $comment."<br/><hr/>";
        
        $comment=trim(pg_escape_string($comment));

		echo $comment."\n";
        
        $sql="update $utterances set comment='$comment' where utterance_id=currval('".$utterances."_utterance_id_seq')";
        $result=pg_query($db_handle,$sql) or die("Can't insert the items");  
    }

	unset($durbegin, $durend, $duration); 
  
}

?>
