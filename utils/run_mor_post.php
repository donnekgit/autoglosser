<?php

$myfile=$_SERVER['argv'][1];

exec("clan/unix/bin/mor -s\"[- eng]\" -lclan/lib/spa clan/chats/".$myfile."_b.cha");

exec("clan/unix/bin/post -l../../lib/spa +dclan/lib/spa/post.db clan/chats/".$myfile."_b.mor.cex");

exec("clan/unix/bin/mor +s\"[- eng]\" -lclan/lib/eng clan/chats/".$myfile."_b.mor.pst.cex");

exec("clan/unix/bin/post -lclan/lib/eng +dclan/lib/eng/post.db clan/chats/".$myfile."_b.mor.pst.mor.cex");

exec("cp clan/chats/".$myfile."_b.mor.pst.mor.pst.cex inputs/".$myfile."_b.cha");

exec("utils/sed_joinlines inputs/".$myfile."_b.cha");

?>