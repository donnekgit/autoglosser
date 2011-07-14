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

exec("clan/unix/bin/mor -s\"[- spa]\" -lclan/lib/eng clan/chats/sastre08_fixed.cha");

exec("clan/unix/bin/post -l../../lib/eng +dclan/lib/eng/post.db clan/chats/sastre08_fixed.mor.cex");

exec("clan/unix/bin/mor +s\"[- spa]\" -lclan/lib/spa clan/chats/sastre08_fixed.mor.pst.cex");

exec("clan/unix/bin/post -lclan/lib/spa +dclan/lib/spa/post.db clan/chats/sastre08_fixed.mor.pst.mor.cex");

exec("mv clan/chats/sastre08_fixed.mor.pst.mor.pst.cex inputs/sastre08_fixed_mor.cha");

exec("utils/sed_joinlines inputs/sastre08_fixed_mor.cha");

?>