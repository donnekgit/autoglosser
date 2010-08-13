<?php

function clitics($text)
// segment the clitic pronouns from the verbform
{
	$text=preg_replace("/l(a|e|o)(s?)$/u", "#l$1$2", $text);
	$text=preg_replace("/(me|te|se|nos)$/u", "#$1", $text);
	$text=preg_replace("/(?<!(l|n))os$/u", "#os", $text);
	$text=preg_replace("/(me|te|se|nos|os)(?=#l(a|e|o)s?)/u", "@$1", $text);
	$text=preg_replace("/(te|se|os)(?=#(me|nos))/u", "@$1", $text);	
	$text=preg_replace("/(se)(?=#(te|os))/u", "@$1", $text);
	return $text;
}

function cliticpos($text)
// rewrite the clitic pronouns to give POS information
{
	$text=preg_replace("/la(?!s)/u", "prn.f.3s", $text);
	$text=preg_replace("/las/u", "prn.f.3p", $text);
	$text=preg_replace("/le(?!s)/u", "prn.mf.3s", $text);
	$text=preg_replace("/les/u", "prn.mf.3p", $text);
	$text=preg_replace("/lo(?!s)/u", "prn.m.3s", $text);
	$text=preg_replace("/los/u", "prn.m.3p", $text);
	$text=preg_replace("/me/u", "prn.mf.1s", $text);
	$text=preg_replace("/te/u", "prn.mf.2s", $text);
	$text=preg_replace("/se/u", "prn.mf.3s", $text);
	$text=preg_replace("/nos/u", "prn.mf.1p", $text);
	$text=preg_replace("/os/u", "prn.mf.2p", $text);
	return $text;
}

$verb="abandónateles";
// READ IN THE VERBFORM from your text via SQL query or whatever
// this is a sample verbfrom - imperative 2 singular of abandonar, with 2 singular and 3 plural clitic pronouns attached

$first=preg_split("/#/", clitics($verb), 2);
$clitic2=$first[1];
$second=preg_split("/@/", $first[0], 2);
$cliticverb=$second[0];
$clitic1=$second[1];

// ADD YOUR VERBFORM LOOKUP HERE: 
// run an SQL query on $cliticverb to do a lookup of the verbform in the dictionary and return the pos-tagged verbform

$prclitic1="+".$clitic1.".".strtoupper(cliticpos($clitic1));
$prclitic2=(isset($clitic2)) ? "+".$clitic2.".".strtoupper(cliticpos($clitic2)) : "";

$cgline=$cliticverb.$prclitic1.$prclitic2;
echo $cgline."\n";

?>
