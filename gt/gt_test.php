<?php
 
require_once('googleTranslate.class.php');
 
$gt = new GoogleTranslateWrapper();
$gt->setReferrer("http://kevindonnelly.org.uk");
$apiKey = "ABQIAAAAqzssasDT1Uj1D4puCMQwVRQXhoz1HJX1na5odYtLRRsz6bu7cRRXwnMnCXgnfiGL-o6oc3HZTd9GSQ";

$gt->selfTest();
 
?>