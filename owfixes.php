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

// This script converts residual [or] entries in the _cgwords table to a final entry.

if (empty($filename))
{
	include("includes/fns.php");
	include("/opt/autoglosser/config.php");
	list($chafile, $filename, $utterances, $words, $cgfinished)=get_filename();
}

// [or]

$sql_or="update $words set auto='yn.PRT', comp='' where surface='yn' and auto='stative.STAT[or]in.PREP'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='aeroplane.N.F.SG', comp='' where surface='awyren' and auto='aeroplane.N.F.SG[or]ventilate.V.3P.IMPER.SPOKEN'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='record.N.M.SG', comp='' where surface='cofnod' and auto='record.N.M.SG[or]record.N.M.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='records.N.M.PL', comp='' where surface='cofnodion' and auto='records.N.M.PL[or]records.N.M.PL'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='combine.V.INFIN', comp='' where surface='cyfuno' and auto='combine.V.INFIN[or]merge.V.INFIN'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='abolish.V.INFIN', comp='' where surface='diddymu' and auto='cancel.V.INFIN[or]abolish.V.INFIN'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='farm.N.SG', comp='' where surface='farm' and auto='farm.N.SG[or]barm.N.SG+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='bus.N.SG+SM', comp='' where surface='fus' and auto='mus.N.SG+SM[or]bus.N.SG+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='car.N.SG+SM', comp='' where surface='gar' and auto='gar.N.SG[or]car.N.SG+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='not.ADV+SM', comp='' where surface='ddim' and auto='nothing.N.M.SG+SM[or]not.ADV+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='choose.V.INFIN', comp='' where surface='dewis' and auto='select.V.INFIN[or]choose.V.INFIN'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='yes.ADV.PAST', comp='' where surface='do' and auto='come.V.1S.PRES.SPOKEN[or]yes.ADV.PAST[or]roof.N.M.SG+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='false.ADJ', comp='' where surface='ffug' and auto='false.ADJ[or]pretend.ADJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='work.N.M.SG', comp='' where surface='gwaith' and auto='time.N.F.SG[or]work.N.M.SG (work)'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='perhaps.ADV', comp='' where surface='hwyrach' and auto='late.ADJ.COMP[or]perhaps.ADV'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='place.N.M.SG+SM', comp='' where surface='le' and auto='place.N.M.SG+SM[or]where.INT+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='who_not.PRON.REL.NEG', comp='' where surface='nad' and auto='who_not.PRON.REL.NEG[or]carve.V.3S.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='night.N.F.SG', comp='' where surface='noson' and auto='become_night_.V.3P.PAST.SPOKEN[or]become_night_.V.1P.PAST.SPOKEN[or]night.N.F.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='when.INT', comp='' where surface='pryd' and auto='when.INT[or]time.N.M.SG'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='above.PREP', comp='' where surface='uwchben' and auto='above.PREP[or]overhead.ADV'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='get.V.1P.PRES', comp='' where surface='cawn' and auto='get.V.1S.IMPERF[or]get.V.1P.PRES'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='be_able.V.1S.IMPERF+SM', comp='' where surface='fedrwn' and auto='be_able.V.1S.IMPERF+SM[or]be_able.V.1P.PRES+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='3S.ADJ.POSS', comp='' where surface='ei' and auto='3s.ADJ.POSS'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='come.V.INFIN', comp='' where surface='dŵad' and auto='com.V.INFIN'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='fortnight.N.MF.SG+SM', comp='' where surface~'ythefnos$' and auto='forthnight.N.MF.SG+SM'";
$result_or=pg_query($db_handle, $sql_or);


// zb

$sql_or="update $words set auto='be.V.1S.IMPERF+SM', comp='' where surface='fyswn' and auto='finger.V.1S.IMPERF+SM'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='truth.N.M.SG', comp='' where surface='gwir' and auto='true.ADJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='no.ADV.PAST', comp='' where surface='naddo' and auto='carve.V.3S.SUBJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='neg.PRT', comp='' where surface='nag' and auto='than.CONJ'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set auto='teledu.N.M.SG', comp='' where surface='teledu' and auto='televise.V.INFIN'";
$result_or=pg_query($db_handle, $sql_or);



















$sql_or="update $words set comp='' where auto~'\\\[or\\\]'";
$result_or=pg_query($db_handle, $sql_or);

$sql_or="update $words set comp='' where comp is null";
$result_or=pg_query($db_handle, $sql_or);




























?>