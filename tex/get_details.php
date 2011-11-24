<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License and the GNU
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

// This file formats the header information into a conversations details preamble to the typeset file.

if (empty($filename))
{
    include("includes/fns.php");
    include("/opt/autoglosser/config.php");
    list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$spdata=get_speakers($words);  // Note that this will only log speakers with more than 200 utterances.

$lines=file("outputs/$filename/$filename.header");  // Open the header file.

foreach ($spdata as $data=>$speaker)  // Loop through the speakers - miami
{
	$parts[$speaker][id]=$speaker;
	
	foreach ($lines as $line)
	{
		if (preg_match("/@ID/", $line) and preg_match("/$speaker/", $line))  // Get speaker attributes
		{
			$attribs=explode($speaker, $line);  // givea: @ID: cym|siarad| + |40||male|||Adult||
			$details=preg_replace("/\|/", ",", $attribs[1]);  // gives: ,40,,male,,,Adult,,
			$details=preg_replace("/,+/", ",", $details);  // gives: ,40,male,Adult,
			$details=substr(trim($details), 1, -1);  // gives: 40,male,Adult
			$details=preg_replace("/,/", ", ", $details);  // gives: 40, male, Adult
			if (preg_match("/\d*;/", $details))
			{
				$details=preg_replace("/(\d*);(\d*)\.(\d*)/", "$1 yr $2 mth", $details);
				// To handle the  years;months.days format, as in 2;11.17 for 2 years, 11 months, and 17 days.
				$details=preg_replace("/;,/", " yr,", $details);
			}
			$parts[$speaker][details]=$details;
		}
		
		if (preg_match("/@Participants/", $line) and preg_match("/$speaker/", $line))  // Get full pseudonyms
		{
			$nyms=explode($speaker, $line);
			$name=explode(" ", trim($nyms[1]));
			$name=$name[0];
			$parts[$speaker][name]=$name;
		}
	}
	unset ($speaker, $details, $name, $id);
}

// print_r($parts);

foreach ($parts as $part)
{
	$person.=$part[name]. " (".$part[id]." - ".$part[details]."), ";
}
echo "Participants: ".substr(trim($person), 0, -1).".\n";

foreach ($lines as $line)
{
	if (preg_match("/@Situation/", $line))
	{
		$bg=preg_split("/\t/", $line);
		//echo  "\\textbf{Background}: ".trim($bg[1])."\n\n";
	}
	
	if (preg_match("/@Time Duration/", $line))
	{
		$time=preg_split("/\t/", $line);
		$hms=preg_replace("/(\d*):(\d*):(\d*)/", "$1 hr $2 min $3 sec", $time[1]);
		//echo  "\\textbf{Duration}: ".trim($hms)."\n\n";
	}

	if (preg_match("/@Date/", $line))
	{
		$date=preg_split("/\t/", $line);
		list($d, $m, $y)=explode("-", trim($date[1]));
		$m=ucfirst(strtolower($m));
		$m=date("m", strtotime($m));
		$mydate=mktime(0,0,0,$m,$d,$y);
		$mydmy=strftime("%e %B %Y", $mydate);
		//echo  "\\textbf{Date}: $mydmy\n\n";
	}

	if (preg_match("/@(Coder|Transcriber)/", $line))
	{
		$coder=preg_split("/\t/", $line);
		//echo  "\\textbf{Transcriber}: ".trim($coder[1])."\n\n";
	}
}

// Write out the details ...

fwrite($fp, "\begin{abstract}\n");

fwrite($fp, "\\textbf{Participants}: ".substr(trim($person), 0, -1).".\n");

fwrite($fp, "\\textbf{Background}: ".trim($bg[1]).".\n");

fwrite($fp, "\\textbf{Duration}: ".trim($hms).".\n");

fwrite($fp, "\\textbf{Date}: ".$mydmy.".\n");

fwrite($fp, "\\textbf{Transcriber}: ".trim($coder[1]).".\n");

fwrite($fp, "\end{abstract}\n\n");

fwrite($fp, "\\rule{\linewidth}{0.2mm}\n\n");

?>