<?php
/***
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
?><html>
    <head>
        <title>Participant Background Data</title>
        <style type="text/css">
            input {
                margin:1px;
                padding:2px;
                border:1px solid #999;
            }
            input:active, input:focus {
                border:1px solid black;
                background:#FFA;
            }
            label[for] {
                font-weight: bold;
                min-width:40px;
                display:inline-block;
            }
        </style>
    </head>
    <body>
        <?php
        error_reporting(E_ALL);
        if(!empty($_POST)) {
            $code = str_replace(array('\\', '/'), '', $_POST['code']);
            $fh = fopen("./results/background-$code.csv", 'w+');
            fwrite($fh, "age,gender,education,wherefrom,southnorth\r\n");
            $age = $_POST['age'];
            $gender = $_POST['gender'];
            $education = $_POST['education'];
            $wherefrom = $_POST['wherefrom'];
            $southnorth = $_POST['southnorth'];
            fwrite($fh, "\"$age\",");
            fwrite($fh, "\"$gender\",");
            fwrite($fh, "\"$education\",");
            fwrite($fh, "\"$wherefrom\",");
            fwrite($fh, "\"$southnorth\"");
            fclose($fh);
            print("Data written to file: background-$code.csv<br />");
            print("<iframe src='./results/background-$code.csv'></iframe><br />");
        }
        ?>
        <h1>Participant Background Data</h1>
        <form method="post">
            <label for="age">Code</label>
                <input type="text" name="code" size="4" /><br />
            <label for="age">Age</label>
                <input type="text" name="age" size="2" /><br />
            <label for="gender">Gender</label><br />
                <input type="radio" name="gender" value="1" />
                    <label>Male</label><br />
                <input type="radio" name="gender" value="2" />
                    <label>Female</label><br />
            <label for="education">Education</label><br />
                <input type="radio" name="education" value="1" />
                    <label>GCSEs</label><br />
                <input type="radio" name="education" value="2" />
                    <label>AS/A-Levels</label><br />
                <input type="radio" name="education" value="3" />
                    <label>(Some) HE</label><br />
                <input type="radio" name="education" value="4" />
                    <label>(Some) PG Ed</label><br />
            <label for="wherefrom">Where are you from?</label>
                <input type="text" name="wherefrom" size="20" /><br />
            <label for="southnorth">South/Mid/North-Walian?</label><br />
                <input type="radio" name="southnorth" value="1" />
                    <label>South</label><br />
                <input type="radio" name="southnorth" value="2" />
                    <label>Mid</label><br />
                <input type="radio" name="southnorth" value="3" />
                    <label>North</label><br />
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
