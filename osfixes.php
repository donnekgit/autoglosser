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

// This script converts residual [or] entries in the _cgwords table to a final entry.  It's a brutalist approach to tidying up any outstanding disambiguation ...
// Note - perhaps this could be redone to scan against a fixes table, instead of doing multiple updates ...

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

$sql_or="update $words set auto='friend.N.SG+ADV' where surface='friendly' and auto='friend.N.SG+ADV[or]friendly.ADJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='later.ADJ' where surface='later' and auto='lat.N.SG+COMP.AG[or]later.ADJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='match.V.PRESPART' where surface='matching' and auto='match.N.SG+ASV[or]match.V.PRESPART'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='month.N.SG+ADV' where surface='monthly' and auto='month.N.SG+ADV[or]monthly.ADJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='stair.N.PL' where surface='stairs' and auto='stair.N.PL[or]stairs.N.PL'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='up.ADV' where surface='arriba' and auto='arrive.V.23S.PRES[or]up.ADV[or]arrive.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='well.ADV' where surface='bien' and auto='good.N.M.SG[or]well.ADV'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='certain.ADJ.M.SG' where surface='cierto' and auto='true.ADJ.M.SG[or]certain.ADJ.M.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='certain.ADJ.M.SG' where surface='cierto' and auto='certain.ADJ.M.SG[or]true.ADJ.M.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='believe.V.1S.PRES' where surface='creo' and auto='create.V.1S.PRES[or]believe.V.1S.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='like.CONJ' where surface='como' and auto='like.CONJ[or]eat.V.1S.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='like.CONJ' where surface='como' and auto='eat.V.1S.PRES[or]like.CONJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='owe.V.23S.PRES' where surface='debe' and auto='owe.V.23S.PRES[or]owe.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='lack.V.23S.PRES' where surface='falta' and auto='lack.V.2S.IMPER[or]lack.V.23S.PRES[or]fault.N.F.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='watch.V.23S.PRES' where surface='mira' and auto='watch.V.23S.PRES[or]watch.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='music.N.F.SG' where surface='música' and auto='musician.N.F.SG[or]music.N.F.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='nothing.PRON' where surface='nada' and auto='nothing.PRON[or]swim.V.23S.PRES[or]not_at_all.ADV[or]swim.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='for.PREP' where surface='para' and auto='stall.V.23S.PRES[or]for.PREP[or]stall.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='part.N.F.SG' where surface='parte' and auto='split.V.23S.PRES[or]part.N.F.SG[or]split.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='part.N.F.PL' where surface='partes' and auto='part.N.F.PL[or]split.V.2S.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='weigh.V.23S.PRES' where surface='pesa' and auto='weigh.V.23S.PRES[or]weigh.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='might.V.23S.PRES' where surface='puede' and auto='might.V.23S.PRES[or]might.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='want.V.23S.PRES' where surface='quiere' and auto='want.V.23S.PRES[or]want.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='know.V.23S.PRES' where surface='sabe' and auto='know.V.23S.PRES[or]know.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='according.PREP' where surface='según' and auto='according.CONJ[or]according.PREP'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='touch.V.23S.PRES' where surface='toca' and auto='touch.V.23S.PRES[or]touch.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='take.V.23S.PRES' where surface='toma' and auto='take.V.23S.PRES[or]take.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='everything.PRON.M.SG' where surface='todo' and auto='everything.PRON.M.SG[or]all.ADJ.M.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='work.V.23S.PRES' where surface='trabaja' and auto='work.V.23S.PRES[or]work.V.2S.IMPER'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='work.N.M.SG' where surface='trabajo' and auto='work.N.M.SG[or]work.V.1S.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='come.V.1S.PRES' where surface='vengo' and auto='avenge.V.1S.PRES[or]come.V.1S.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set comp='' where comp is null";
$result_or=pg_query($db_handle, $sql_or);

?>