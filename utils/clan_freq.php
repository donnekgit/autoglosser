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

include("../includes/fns.php");
include("/opt/autoglosser/config.php");

$dir="siarad";
$lgtag="1";

if (is_dir($dir))
{
	if ($dh=opendir($dir))
	{
		while (($myfile=readdir($dh)) !== false)
		{
			//if ($file!="." and $file!=".." and $file!=".directory")
			if (preg_match("/\.cha/U", $myfile))
			{
				exec("../unix-clan/unix/bin/freq +s\"*$lgtag\" ".$dir."/".$myfile, $clan_output);
				foreach ($clan_output as $clan_line)
				{
					if (preg_match("/tokens/U", $clan_line))
					{
						preg_match("/(?P<lgwords>\d{1,9})/", $clan_line, $lgtokens);
						$lgwords=$lgtokens[lgwords];
						echo $myfile.": ".$lgwords."\n";
						
						$shortfile=strtolower(basename(preg_replace("/\..*$/", "", $myfile)));

						$sql="insert into freq_$dir(filename, words) values ('$shortfile', $lgwords)";
						$result=pg_query($db_handle,$sql) or die("Can't insert the items");
					}
				}
				unset($clan_output);

				exec("../unix-clan/unix/bin/freq ".$dir."/".$myfile, $clan_toutput);
				foreach ($clan_toutput as $clan_tline)
				{
					if (preg_match("/tokens/U", $clan_tline))
					{
						preg_match("/(?P<twords>\d{1,9})/", $clan_tline, $ttokens);
						$twords=$ttokens[twords];
						echo $myfile.": ".$twords."\n";
						
						$shortfile=strtolower(basename(preg_replace("/\..*$/", "", $myfile)));

						$sqlt="update freq_$dir set total=$twords where filename='$shortfile'";
						$resultt=pg_query($db_handle,$sqlt) or die("Can't insert the items");
					}
				}
				unset($clan_toutput);
			}
        }
        closedir($dh);
    }
}


$sql_f="select * from freq_$dir";
$result_f=pg_query($db_handle,$sql_f) or die("Can't insert the items");
while ($row_f=pg_fetch_object($result_f))
{
	$percent=$row_f->words / $row_f->total * 100;
	$sqlp="update freq_$dir set percent=$percent where filename='$row_f->filename'";
	$resultp=pg_query($db_handle,$sqlp) or die("Can't insert the items");
	echo $row_f->filename." ";
	echo $row_f->words." ";
	echo $row_f->total." ";
	echo $percent."\n";
}



?>