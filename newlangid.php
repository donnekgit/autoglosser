<?php

function normalise_langid($text)
// Assign a language id to the word
{
	$text=preg_replace("/s$/u", "$lflg", $text);  // Change this to reflect your secondary language
	$text=preg_replace("/0$/u", "0", $text);
	$text=preg_replace("/1$/u", "1", $text);
	$text=preg_replace("/2$/u", "2", $text);
	$text=preg_replace("/3$/u", "3", $text);
	$text=preg_replace("/s:cy$/u", "1", $text);
	$text=preg_replace("/s:en$/u", "2", $text);
	$text=preg_replace("/s:es$/u", "3", $text);
	$text=preg_replace("/s:cym$/u", "1", $text);
	$text=preg_replace("/s:eng$/u", "2", $text);
	$text=preg_replace("/s:spa$/u", "3", $text);

    return $text;
}

$mflg="spa";
$lflg="eng";

$surface_value="going@s";
$precode="eng";

list($surface_word, $langid)=explode('@', $surface_value);  // Split the surface value at the @

$langid=normalise_langid($langid);

if (preg_match("/(\.|\?|!)/", $surface_value)) 
{
	$surface_word=$surface_value;
	$langid="999";
} 
elseif ($langid="")
{ 
	if ($precode==$lflg)
	{
		$langid=$lflg;
}
else
{
	$surface_word=$surface_value; 


if (preg_match("/^s$/", $langid))
{
	$langid=($precode==$lflg) ? $mflg : $lflg;
}
else
{
	// No langid tag is on the word; in this case, the language will be the one marked as blank ("") in the language arrays at the top of fns.php.
	$langid="";
	// changes to handle new CLAN default
	// replace above line as follows:
	$langid=($precode==$lflg) ? $lflg : $mflg;
} 












?>