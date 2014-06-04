<?php
/***
 *
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

function resolve_id($hidden_id) {
    //resolve condition (ad < 5 >= od)
    $cond = substr($hidden_id, 0, 1);
    if($cond < 5) {
        $cond = 'ad';
    } else {
        $cond = 'oa';
    }
    //extract id
    $id = (int) substr($hidden_id, 1, 2);
    
    return array('id' => $id,
                 'cond' => $cond,
                 0 => $id,
                 1 => $cond);
}

?>
<html>
    <head>
        <title>Offline Task Data Sheet</title>
        <style type="text/css">
            .id {
                width:40px;
            }
            .value {
                width:15px;
            }
            input {
                margin:1px;
                padding:2px;
            }
            input:active, input:focus {
                border:1px solid black;
                background:#FFA;
            }
        </style>
    </head>
    <body>
        <?php
        error_reporting(E_ALL);
        $train_results = array();
        $final_results = array();
        if(!empty($_POST)) {
            $code = str_replace(array('\\', '/'), '', $_POST['code']);
            $fh = fopen("./results/offline-train-$code.csv", 'w+');
            fwrite($fh, "id,cond,rating\r\n");
            foreach($_POST['train_id'] as $index => $id) {
                list($id, $cond) = resolve_id($id);
                $value = $_POST['train_value'][$index];
                $train_results[$id][$cond] = $value;
                fwrite($fh, "\"$id\",\"$cond\",\"$value\"\r\n");
            }
            fclose($fh);
            print("Data written to file: offline-train-$code.csv<br />");
            print("<iframe src='./results/offline-train-$code.csv'></iframe><br />");
            $fh = fopen("./results/offline-$code.csv", 'w+');
            fwrite($fh, "id,cond,rating\r\n");
            foreach($_POST['id'] as $index => $id) {
                list($id, $cond) = resolve_id($id);
                $value = $_POST['value'][$index];
                $final_results[$id][$cond] = $value;
                fwrite($fh, "\"$id\",\"$cond\",\"$value\"\r\n");
            }
            fclose($fh);
            print("Data written to file: offline-$code.csv<br />");
            print("<iframe src='./results/offline-$code.csv'></iframe><br />");
        }
        ?>
        <form method="post">
            <p>
                <b>Code:</b> <input type="text" name="code" />
            </p>
            <h2>Block 1</h2>
                <ol>
                    <?php for($i=0;$i<10;$i++) { ?>
                    <li>
                        <input type="text" class="id" name="train_id[]" />
                        <input type="text" class="value" name="train_value[]" />
                    </li>
                    <?php } ?>
                </ol>
            <?php for($block=2;$block<=6;$block++) { ?>
                <h2>Block <?=$block?></h2>
                    <ol>
                        <?php for($i=0;$i<30;$i++) { ?>
                        <li>
                            <input type="text" class="id" name="id[]" />
                            <input type="text" class="value" name="value[]" />
                        </li>
                        <?php } ?>
                    </ol>
            <?php } ?>
            <button type-"submit">Submit</button>
        </form>
    </body>
</html>
