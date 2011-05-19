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

$myfile=$_SERVER['argv'][1];

exec("clan/unix/bin/mor -s\"[- eng]\" -lclan/lib/spa clan/chats/".$myfile."_b.cha");

exec("clan/unix/bin/post -l../../lib/spa +dclan/lib/spa/post.db clan/chats/".$myfile."_b.mor.cex");

exec("clan/unix/bin/mor +s\"[- eng]\" -lclan/lib/eng clan/chats/".$myfile."_b.mor.pst.cex");

exec("clan/unix/bin/post -lclan/lib/eng +dclan/lib/eng/post.db clan/chats/".$myfile."_b.mor.pst.mor.cex");

exec("cp clan/chats/".$myfile."_b.mor.pst.mor.pst.cex inputs/".$myfile."_b.cha");

exec("utils/sed_joinlines inputs/".$myfile."_b.cha");

?>