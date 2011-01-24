<?php

function remfirst_r(&$array)
// Removes a key and a value from the top of the array, retaining the key sequence.  Thanks to dyce at:
// http://uk2.php.net/manual/en/function.array-shift.php
// If you do $del=remfirst_r($myarray), $del will be an array containing the deleted item.
// array_shift removes the value, but resets the key to start from 0.
// array_reverse plus array_pop will do the same as this function, but more wordily.
{
	list($k)=array_keys($array);
	$rem=array($k=>$array[$k]);
	unset($array[$k]);
	return $rem;
}

function decrement_r($array)
{
	foreach ($array as $key => $value) 
	{
		$dec[$key-1] = $value;
	}
	return $dec;
}

$myarray=array(1=>"foo", "bar", "xxx", "fu", "baz", "bing", "bong", "lollopy", "louche", "slip", "slap", "slop");

print_r($myarray)."\n";

remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);
remfirst_r($myarray);

print_r($myarray)."\n";

echo $myarray[10]."\n";

$myarray=decrement_r($myarray);
print_r($myarray)."\n";

echo $myarray[10]."\n";


/*
For each utterance, feed the surface line into an array by splitting it at a space.
Read the keys of the array in sequence and compare each value to the contents of the same location slot in cgwords (remember to account for brackets).
If they match, read over the POS tag string, and strike off the array entry using remfirst_r().
If they don't match, strike off the array entry  using remfirst_r() and decrement the keys using decrement_r().
*/


/*
$bill=reset($myarray)."\n";
// returns the first value of an array without modifying the array.
echo $bill."\n";
*/

?>

