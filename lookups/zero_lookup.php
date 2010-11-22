<?php

/*
Copyright Kevin Donnelly 2009.

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

// This file handles words tagged as 0 - ie they do not appear in any language dictionary.  As such, we confine ourselves to marking them, with no lookups. If they are capitalised, we mark as a name; if not, we just repeat the surface word (or replace $surface with unk if you want to mark as unk[nown].  Note that this category also includes "mixed" words - words that have morphemes in different languages.  These are very rare, at least in cy, en, es.

$tag=(preg_match("/^[A-Z]/", $surface)) ? "name" : "$surface";   
// FIXME - since the lookup changes, $surface above doesn't have the desired effect.  It gets written to the CG files, but $surface is not written to $cgfinished, because the code for that is only based on whether there is a dictionary entry or not
// Need to adjust this so that it checks for lowercase versions of the word, eg Universidad
$entry="\t\"".$surface."\" ".$place."[0] ".$tag."\n";
echo $entry;  // View
fwrite($fp, $entry);  // Write
unset($entry);  // Clear the decks

?>
