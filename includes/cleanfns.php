<?php

/*
Copyright Kevin Donnelly 2010.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

$fns=file_get_contents("includes/fns.php");

$tiers=file("outputs/".$filename."/".$filename."_tiers.txt", FILE_SKIP_EMPTY_LINES);
foreach ($tiers as $tier)
{
    $tier=trim($tier);
    // echo $tier."\n";

    if (!preg_match("/lineclean_$tier/", $fns))
    { 
        $fp = fopen("includes/fns.php", "a");
$lineclean="<?php
function lineclean_$tier(\$text)
// Make corrections to the tier as a whole, before it is segmented into words.
{
    // This is a dummy function - add code here.
    return \$text;
}
?>
";
        fwrite($fp, $lineclean);
        fclose($fp);
    }

    if (!preg_match("/wordclean_$tier/", $fns))
    { 
        $fp = fopen("includes/fns.php", "a");
$wordclean="<?php
function wordclean_$tier(\$text)
// Make corrections to the individual words in the tier.
{
    // This is a dummy function - add code here.
    return \$text;
}
?>
";
        fwrite($fp, $wordclean);
        fclose($fp);
    } 
}

?>