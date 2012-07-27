<?php
/***
 * Run AutoGlosser on entire corpus
 *
 * This script provides a shorthand to running the Bangor AutoGlosser on the
 * entiretiy of a given CHILDES corpus. It will assume that the AutoGlosser is
 * installed in the same directory as the script and then extract all CHAT files
 * and run the through the AutoGlosser. It will subsequently copy all the
 * relevant files to a different directory, so that this mirrors the original
 * collection of CHAT files, without the surplus output of the AutoGlosser.
 *
 * It should be used from the command line as follows:
 *   php do_directory.php <path>
 * where <path> is a required argument giving the path of the directory which
 * contains the corpus' CHAT files.
 *
 * PHP Version 5.3
 *
 * LICENSE: This piece of software was developed as part of a BA (Hons)
 * dissertation at Bangor University. It may be freely distributed and used by
 * anybody whomsoever, so long as the author is acknowledged annd no changes
 * are made to the source code without prior agreement with the author.
 *
 * @author     Florian Breit <f.breit@univ.bangor.ac.uk>
 * @copyright  2012 Florian Breit
 * @version    1.0.0
 */

//Set up PHP to report all errors
error_reporting(E_ALL);
ini_set("display_errors", 1);
ini_set("log_errors", 1);
ini_set("error_log", "./errors.log");

//Check user arguments...
if($argc != 2) {
    die("This script takes exactly one argument (the path to the directory to "
        ."be autoglossed). ".(--$argc)." arguments given.");
}

//Read directory and run AutoGlosser on it's CHAT files..
$dirname = $argv[1];
$dir = @dir($dirname) or die("The specified directory could not be found.");
@mkdir('outputs/'.basename($dir->path).'_autoglossed');
while(false !== $file = $dir->read()) {
    if(substr($file, -4) == ".cha") { //Only chat files
        $exec_file = $dir->path."/".$file;
        //Now run do_everything for each..
        print "\n***\n* Autoglossing file: $file\n***\n";
        passthru("php do_everything.php \"$exec_file\"");
        copy("outputs/".basename($file, ".cha")."/".basename($file, ".cha")
             ."_autoglossed.txt",
             "outputs/".basename($dir->path)."_autoglossed/".$file);
    }
}
?>