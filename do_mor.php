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

$morfile=$filename."_m";


exec("clan/unix/bin/mor -s\"[- eng]\" -lclan/unix/bin/spa clan/chats/".$morfile.".cha");
exec("clan/unix/bin/post -lclan/unix/bin/spa +dclan/unix/bin/spa/post.db clan/chats/".$morfile.".mor.cex ");
exec("clan/unix/bin/mor +s\"[- eng]\" -lclan/unix/bin/eng clan/chats/".$morfile.".mor.pst.cex");
exec("clan/unix/bin/post -lclan/unix/bin/eng +dclan/unix/bin/eng/post.db clan/chats/".$morfile.".mor.pst.mor.cex");

exec("utils/sed_joinlines clan/chats/".$morfile.".mor.pst.mor.pst.cex");

//exec("php do_everything.php clan/chats/".$morfile.".mor.pst.mor.pst.cex");  // This works, but gives no feedback, so for small numbers of files it's better to do it manually.

?>