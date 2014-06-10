<?php

//Open a new file to write to.
$fp = fopen("mymor.txt", "w");

// Open the source file.
$lines=file("inputs/siarad/beta/davies16.cha");
// Read through each line.
foreach ($lines as $line)
{
	// If the speaker tier matches the speaker you want ...
	if (preg_match("/^\*HYW/", $line))
	{
		$getmor=1;  //  ... set a marker.
	}
	//  If the speaker tier doesn't match that speaker ...
	elseif (preg_match("/^\*[^(HYW)]/", $line))
	{
		$getmor=0;  // ... revert the marker.
	}
	
	// For any %eng line for which the marker is set
	// (ie the last speaker was HYW) ...
	if (preg_match("/^%eng/", $line) and $getmor==1)
	{
		echo $line;  // ... show the line ...
		fwrite($fp, $line);  // ... write it to the new file ...
		$getmor=0;  // ... revert the marker.
	}
}

// Close the new file.
fclose($fp);

?>