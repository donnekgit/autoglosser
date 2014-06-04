<?php
/***
 * Generate List of Audio Stimuli and Durations for OpenSesame
 *
 * This script parses either the directory ./TRAIN or ./FINAL for waveform audio
 * files (.wav) and then generates a list with their filenames and their
 * duration in milliseconds which can be pasted into OpenSesame's loop tables.
 * Takes one command line argument, either TRAIN or FINAL to determine the set
 * of files to be processed.
 *
 * PHP Version 5.3
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License or the GNU
 * Affero General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option)
 * any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * and the GNU Affero General Public License along with this program.
 * If not, see <http://www.gnu.org/licenses/>.
 *
 * @author     Florian Breit <florian.breit.12@ucl.ac.uk>
 * @copyright  2012 Florian Breit
 * @version    1.0.0
 * @package    BangorAutoglosser
 * @license    http://www.gnu.org/licenses/gpl.html
 * @license    http://www.gnu.org/licenses/agpl.html
 */

//
// SETUP
//

//Some PHP stuff
error_reporting(E_ALL);
ini_set('display_errors', 1);

//Paths
$root_path = "./";

//
// MAIN SCRIPT
//

//Check command line argument is okay
if(isset($argv[1]) && ($argv[1] == "TRAIN" || $argv[1] == "FINAL") ) {
    $type = $argv[1];
} else {
    die("First argument must be either TRAIN or FINAL.");
}

//Scan all files and print info
$dir = scandir($root_path.$type);
$i = 0;
foreach($dir as $file) {
    if( substr($file, -4) == ".wav" ) {
        $dur = (int) wavDur("./$type/".$file);
        $cond = substr($file, 2, 2);
        $no = substr($file, 0, 2);
        print "setcycle $i cue_no \"$no\"\n";
        print "setcycle $i cue_condition \"$cond\"\n";
        print "setcycle $i cue_file \"$type/$no$cond\"\n";
        print "setcycle $i cue_duration \"$dur\"\n";
        $i++;
    }
}

//
// FUNCTIONS
//

/***
 * Read Header and Duration from RIFF Waveform Files
 *
 * This function reads the header information from a RIFF Waveform file and
 * then calculates the file duration (for the audio content) in milliseconds.
 * The function is adapted from an earlier code snippet posted by "valinea"
 * on 07 August 2006 at http://snipplr.com/view/285/.
 *
 * @link http://snipplr.com/view/285/
 * @author valinea (http://snipplr.com/users/velinea/)
 * @param string $file Path to the waveform file to be analysed
 * @return int Returns the duration of the waveform in seconds.
 */
function wavDur($file) {
    $fp = fopen($file, 'r');
    if(fread($fp,4) == "RIFF") {
        fseek($fp, 20);
        $rawheader = fread($fp, 16);
        $packing = 'vtype/vchannels/Vsamplerate/Vbytespersec/valignment/vbits';
        $header = unpack($packing, $rawheader);
        $pos = ftell($fp);
        while(fread($fp,4) != "data" && !feof($fp)) {
            $pos++;
            fseek($fp,$pos);
        }
        $rawheader = fread($fp, 4);
        $data = unpack('Vdatasize',$rawheader);
        $sec = $data[datasize]/$header[bytespersec];
        $ms = $sec*1000;
        return $ms;
    }
}
?>
