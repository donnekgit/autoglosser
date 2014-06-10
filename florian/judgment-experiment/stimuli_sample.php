<?php
/***
 * Sample of Format for stimuli.php
 *
 * This file contains a sample of the formatting in which the file
 * stimuli.php, used by the make_questionnaire.php script, should be.
 * This should contain two arrays, $TRAIN for the training stimuli and
 * $FINAL for the test stimuli, both following the format indicated
 * below. The text may include references to other stimuli in the form
 * #NN giving their index number in the array, these will be skipped in
 * the final output.
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

$TRAIN = array(
     1 => array(
            'oa' => "Dwyt Wyn ddim isio yfed bara brith o gwbl!",
            'ad' => "Wyn ddim isio yfed bara brith o gwbl!",
            ),
     2 => array(
            'oa' => "Next sentence in overt auxiliary condition",
            'ad' => "Next sentence in auxiliary deletion condition",
            ),
     3 => array(
            'oa' => "...",
            'ad' => "...,"
            ),
     //etc..
);

?>
