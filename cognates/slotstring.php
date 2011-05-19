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

include("/opt/autoglosser/config.php");

$sqlc="select * from cognates order by cognate";
$resultc=pg_query($db_handle,$sqlc) or die("Can't get the items");
while ($rowc=pg_fetch_object($resultc))
{
	echo $rowc->cognate."\n=====\n";

	$sql="select * from robert1_cgwords where surface='$rowc->cognate'";
	$result=pg_query($db_handle,$sql) or die("Can't get the items");
	while ($row=pg_fetch_object($result))
	{
        // Get surface line, with full markings
		$sql3="select * from robert1_cgutterances where utterance_id=$row->utterance_id";
		$result3=pg_query($db_handle,$sql3) or die("Can't get the items");
		while ($row3=pg_fetch_object($result3))
		{
			echo $row->utterance_id.": ".$row3->surface."\n";
            
            $sqlutt="insert into robert1_cognates(utterance_id, surface) values($row->utterance_id, '$row3->surface')";
            $resultutt=pg_query($db_handle,$sqlutt) or die("Can't get the items");
		}

		$sql2="select * from robert1_cgwords where utterance_id=$row->utterance_id order by location";
		$result2=pg_query($db_handle,$sql2) or die("Can't get the items");
		while ($row2=pg_fetch_object($result2))
		{
			
			$text.=$row2->surface." ";

			if ($row2->surface==$rowc->cognate)
			{

				$slot='C';
			}
			else
			{
				if ($row2->langid=='999')
				{
					$slot='';
				}
				else
				{
                    $row2->langid=preg_replace("/0/", "T", $row2->langid);
					$slot=$row2->langid;
				}
			}
			$slotstring.=$slot;

            $prepost=preg_split("/C/", $slotstring);

			//$posstring.=$row2->auto." ~ ";
		}

        echo $row->utterance_id.": ".$text."\n";

		echo $row->utterance_id.": ".$slotstring."\n";
        echo $row->utterance_id.": ".$prepost[0]."\n";
        echo $row->utterance_id.": ".$prepost[1]."\n";

		//echo $row->utterance_id.": ".$posstring."\n";
        echo $row->utterance_id.": ";

        $sqlf="select * from robert1_cgwords w left join robert1_cgfinished f on w.utterance_id=f.utterance_id and w.location=f.location where w.utterance_id=$row->utterance_id order by w.location";
        $resultf=pg_query($db_handle,$sqlf) or die("Can't get the items");
        while ($rowf=pg_fetch_object($resultf))
        {
            // Format POS: C/T for @0, lowercase for @1, and uppercase for @2
            if ($rowf->langid==0) 
            {
                ($rowf->lemma==$rowc->cognate) ? $rowf->pos="C" : $rowf->pos="T";     
            }
            elseif ($rowf->langid==1) { $rowf->pos=$rowf->pos; }
            elseif ($rowf->langid==2) { $rowf->pos=strtoupper($rowf->pos); }

            // Concatenate the POSs for each location into an array element keyed as the location
            $mystring[$rowf->location].=$rowf->pos;
        }

        array_pop($mystring);
        //print_r($mystring);

        // Concatenate the array elements into one string, bracketing where there are multiple POSs for one location
        while(list($k,$v)=each($mystring))
        {
            if (strlen($v)>1)
            {
                $bigstring.="(".$v.")";
            }
            else
            {
                $bigstring.=$v;
            }
        }
        echo $bigstring;

        $sqlstr="update robert1_cognates set utt_text='$text', profile='$slotstring', prec='$prepost[0]', postc='$prepost[1]', gloss='$bigstring' where utterance_id=$row->utterance_id";
        $resultstr=pg_query($db_handle,$sqlstr) or die("Can't get the items");

        unset($text, $slotstring, $prepost, $posstring, $mystring, $bigstring);
        echo "\n\n";

	}
}

echo "\n";

?>
