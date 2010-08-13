<?php

function clitics($text)
{
	$text=preg_replace("/l(a|e|o)(s?)$/u", "#l$1$2", $text);
	$text=preg_replace("/(me|te|se|nos)$/u", "#$1", $text);
	$text=preg_replace("/(?<!(l|n))os$/u", "#os", $text);
	$text=preg_replace("/(me|te|se)(?=#l(a|e|o)s?)/u", "@$1", $text);
	$text=preg_replace("/(te|se|os)(?=#(me|nos))/u", "@$1", $text);	
	$text=preg_replace("/(se)(?=#(te|os))/u", "@$1", $text);
	return $text;
}

function cliticpos($text)
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

$verb="semestrándosenos";

$parse=clitics($verb);

echo $parse."\n";

$first=preg_split("/#/", $parse, 2);
$clitic1=$first[1];
$second=preg_split("/@/", $first[0], 2);
$cliticverb=$second[0];
$clitic2=$second[1];

echo $cliticverb."\n";
echo $clitic1.": ".cliticpos($clitic1)."\n";
echo $clitic2.": ".cliticpos($clitic2)."\n";

$prclitic1="+".$clitic1.".".strtoupper(cliticpos($clitic1));

if (isset($clitic2))
{
	$prclitic2="+".$clitic2.".".strtoupper(cliticpos($clitic2));
}
else
{
	$prclitic2='';
}

$cgline=$cliticverb.$prclitic1.$prclitic2;
echo $cgline."\n";

?>
