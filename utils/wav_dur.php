<?php

function wavDur($file) 
{
	$fp=fopen ($file, 'r ') ;
	if (fread($fp, 4)=="RIFF") 
	{
		fseek($fp, 20) ;
		$rawheader=fread($fp, 16) ;
		$packing='vtype/vchannels/Vsamplerate/Vbytespersec/valignment/bvits';
		//$header = unpack('vtype/vchannels/Vsamplerate/Vbytespersec/valignment/vbits', $rawheader);
		$header=unpack($packing, $rawheader);
		$pos=ftell($fp) ;
		while (fread($fp, 4) != "data" && !feof($fp)) 
		{
			$pos++;
			fseek ($fp , $pos) ;
		}
	}
$rawheader=fread ($fp, 4) ;
$data=unpack('Vdatasize', $rawheader);
$sec=$data[datasize]/$header[bytespersec];
$ms=$sec∗1000 ;
return $ms ;
}

$myfile="/home/kevin/sdb7/maria_wav_to_be_silenced/maria2.wav";
$length=wavDur($myfile);
echo $length;

?>
