<?php
/***
 * Generate Randomised Questionnaire
 *
 * This script reads a list of stimuli and then creates a HTML file containing
 * a set of instructions and the list of stimuli in pseudo randomised order with
 * a Likert scale from 1 to 5 and checkboxes for each item, split into blocks of
 * 30, with the first block drawn from a set of training stimuli. CConditions
 * are masked by a special function containing partially random digits so that
 * participants are unlikely to discover a pattern in stimuli numeration. See
 * the file stimuli.php for an example of the kind of stimuli list required.
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
$stimuli_list = './stimuli.php';
$output_file = './quest.html';

//
// MAIN SCRIPT
//

//Fetch stimuli list
require($stimuli_list);
if(!isset($TRAIN) || !isset($FINAL)) {
    die('Stimuli set is either missing $TRAIN or $FINAL data structures.');
}

//Start output buffering and print HTML header
ob_start();
print '<?xml version="1.0" encoding="UTF-8"?>';
print <<<HTML
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>AD EXPERIMENT &mdash; OFFLINE JUDGEMENT TASK</title>
        <style>
            body {
                font-size:12pt;
                font-family:serif;
                padding:0px;
                margin:0px;
            }
            h1 {
                font-size:150%;
            }
            h2 {
                font-size:115%;
                page-break-before:auto;
                page-break-after:avoid;
            }
            h2.break {
                page-break-before:always;
            }
            div p {
                display:inline-block;
                margin:2px;
            }
            div p.id {
                width:auto;
                font-size:60%;
                font-family:monospace;
                color:#777;
            }
            div p.stimuli {
                width:70%;
            }
            div p.likert {
                width:auto;
            }
            div p.likert span {
                display:inline-block;
                width:22px;
                text-align:center;
            }
        </style>
    </head>
    <body>
        <h1>AD EXPERIMENT &mdash; OFFLINE JUDGEMENT TASK</h1>
        <h2>Instructions</h2>
        <p>
            In this task you are presented with a number of colloquial Welsh
            sentences similar to those you've heared in the computer-aided task
            you have just completed. Again some of these sentences will be just
            fine and some of them will probably seem rather odd to you.
        </p>
        <p>
            As opposed to the previous task however, this time we want you to
            rate how acceptable the given sentences seem to you. For this you
            will see a five point scale next to every sentence. You should use
            the number 1 to indicate that you feel the sentence is completely
            unacceptable and the number 5 to indicate that it feels completely
            acceptable to you. Use any of the numbers in-between to indicate
            that you have a tendency to say it is acceptable or unacceptable, or
            the box in the middle if you cannot decide at all.
        </p>
        <p>
            Again this is about what you feel is appropriate in the colloquial,
            spoken language and that this is not about what you may have been
            taught about Welsh in school. As you will surely know sometimes what
            people do can be very different from what they teach! So remember
            that this is about your personal opinion about the language you
            speak and so you are the real expert!
        </p>

HTML;

//Print likert scale for training data
print <<<HTML
        <h2>Block 1</h2>
        <div>
            <p class="id">&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p class="stimuli"></p>
            <p class="likert">
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
            </p>
        </div>

HTML;

//Randomise and print training stimuli
$training_data = rand_stimuli($TRAIN);
foreach($training_data as $stimulus) {
    $id = hide_id($stimulus[0], $stimulus[1]);
    $sentence = $stimulus[2];
    print <<<HTML
        <div>
            <p class="id">$id</p>
            <p class="stimuli">$sentence</p>
            <p class="likert">
                <span>&#9744;</span>
                <span>&#9744;</span>
                <span>&#9744;</span>
                <span>&#9744;</span>
                <span>&#9744;</span>
            </p>
        </div>

HTML;
}

//Randomise experimental stimuli
$experimental_data = rand_stimuli($FINAL);
$block_counter = 2; //Block 1 were the Training stimuli

//Print experimental stimuli in blocks of 30
for($i=0; $i< count($experimental_data); $i++) {
    if($i%30 == 0) {
        //Print block header with numbers for likert scale
        print <<<HTML
        <h2 class="break">Block $block_counter</h2>
        <div>
            <p class="id">&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p class="stimuli"></p>
            <p class="likert">
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
            </p>
        </div>

HTML;
        $block_counter++;
    }
    $stimulus = $experimental_data[$i];
    $id = hide_id($stimulus[0], $stimulus[1]);
    $sentence = $stimulus[2];
    //Print stimuli and likert scale
    print <<<HTML
        <div>
            <p class="id">$id</p>
            <p class="stimuli">$sentence</p>
            <p class="likert">
                <span>&#9744;</span>
                <span>&#9744;</span>
                <span>&#9744;</span>
                <span>&#9744;</span>
                <span>&#9744;</span>
            </p>
        </div>

HTML;
}

//Print HTML footer
print <<<HTML
    </body>
</html>
HTML;

//Write output buffer to output file
$ob = ob_get_contents();
$fh =fopen($output_file, 'w+');
fwrite($fh, $ob);
fclose($fh);

//NB: Output buffer wil be flushed to STDOUT at end of script!

//
// FUNCTIONS
//

/***
 * Randomise list of stimuli
 *
 * This function takes an array of stimuli in two conditions and merges these
 * into one single list, assigning a pseudo random order to every single item.
 *
 * @param array $stimuli A two-dimensional array of stimuli to be randomised
 * @return array Returns a flat array of stimuli in pseudo random order
 */
function rand_stimuli($stimuli) {
    $keys = array_keys($stimuli);       //get all keys
    $keys = array_merge($keys, $keys);  //double keys (+A and -A conditions)
    shuffle($keys);                     //pseudo-randomisation
    $result = array();
    foreach($keys as $key) {
        if(count($stimuli[$key]) > 1) {
            $cond = rand(0, 1) ? 'ad' : 'oa'; //pseudo-random +A or -A
            if(substr($stimuli[$key][$cond], 0, 1) == '#') {
                continue;   //skip references to #xx
            }
            $result[] = array($key, $cond, $stimuli[$key][$cond]);
            unset($stimuli[$key][$cond]);
        } else {
            $cond = array_keys($stimuli[$key]); //either oa or ad
            $cond = $cond[0];
            if(substr($stimuli[$key][$cond], 0, 1) == '#') {
                continue;   //skip references to #xx
            }
            $result[] = array($key, $cond, $stimuli[$key][$cond]);
            unset($stimuli[$key][$cond]);
        }
    }
    
    return $result;
}

/***
 * Hide Stimuli ID and condition
 *
 * This function takes the id and condition description (oa or ad) from a
 * stimuli and returns a string masking these in some predetermined pseudo
 * random numbers, which can be converted back into the original stimuli
 * ID and condition. Specifically a pseudo random number between 0 and 4 is
 * assigned to the condition `ad' and one between 5 and 9 to `oa'. This is
 * followed by the stimuli ID, with a leading zero where applicable. Another
 * pseudo random number between 0 and 9 is appended at the end.
 *
 * @param string $cond A string indicating the experimental condition, either
 *                     `oa' (+A) or `ad' (-A)
 * @param int $id The stimuli ID
 * @return string Returns a string of numbers encoding condition and ID
 */
function hide_id($id, $cond) {
    if($cond == 'ad') {
        $p = rand(0, 4); //0-4 to mark -A
    } else {
        $p = rand(5, 9); //5-9 to mark +A
    }
    if(strlen($id) == 1) {
        $id = '0'.$id;  //enforce preceeding 0
    }
    $t = rand(0, 9);    //random trailing number
    
    return $p.$id.$t;
}
?>
