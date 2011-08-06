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

// This file marks trigrams fitting the POS of interest, and then copies them into a new table.  A relevant name for the subset of material should be specified as the first argument, eg php mc_trigram.php <patagonia>.

$subset=$_SERVER['argv'][1];
$mctable="mc_".$subset;
$mckeep="mc_k_".$subset;

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$sql_d=query("select * from $mctable order by id");
while ($row_d=pg_fetch_object($sql_d))
{
	if (preg_match("/\.ADJ\.?(?!POSS)/", $row_d->auto2) or preg_match("/\.A?SV./", $row_d->auto2) or preg_match("/PRESPART/", $row_d->auto2) or preg_match("/PASTPART/", $row_d->auto2) or preg_match("/\.N\./", $row_d->auto2) or preg_match("/.*ing$/", $row_d->surface2))
	{
		if (preg_match("/\.ADJ\.?(?!POSS)/", $row_d->auto3) or preg_match("/\.A?SV./", $row_d->auto3) or preg_match("/PRESPART/", $row_d->auto3) or preg_match("/PASTPART/", $row_d->auto3) or preg_match("/\.N\./", $row_d->auto3) or preg_match("/.*ing$/", $row_d->surface3))
		{
			echo $row_d->surface1." ".$row_d->surface2." ".$row_d->surface3."\n";
			$sql_u=query("update $mctable set use='k' where id=$row_d->id");
		}
	}
}

drop_existing_table($mckeep);

$sql=query("create table $mckeep as select * from $mctable where use='k'");

?>