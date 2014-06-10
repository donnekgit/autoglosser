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

//
// TRAINING DATA
//

$TRAIN = array(
     1 => array(
            'oa' => "Dwyt Wyn ddim isio yfed bara brith o gwbl!",
            'ad' => "Wyn ddim isio yfed bara brith o gwbl!",
            ),
     2 => array(
            'oa' => "Be' oedd y derwydd yn licio mwyaf?",
            'ad' => "Be' yn derwydd y licio mwyaf?",
            ),
     3 => array(
            'oa' => "Pryd wyt ti'n gorffen dy arholiad?",
            'ad' => "Pryd ti'n gorffen dy arholiad?",
            ),
     4 => array(
            'oa' => "Mae Sioned yn gwerthu lot o stwff yn y farchnad.",
            'ad' => "Sioned yn gwerthu lot o stwff yn y farchnad.",
            ),
     5 => array(
            'oa' => "Wnâth hi ddim cael lle oddi wrth y stafell.",
            'ad' => "Doedd gynni hi ddim lle yn eu 'stafell.",
            ),
);

//
// EXPERIMENTAL DATA
//

$FINAL = array(
     1 => array(
            'oa' => "Dw i'n licio hufen iâ.",
            'ad' => "Fi'n licio hufen iâ.",
            ),
     2 => array(
            'oa' => "Dw i'n byw ym Mangor.",
            'ad' => "Fi'n byw ym Mangor.",
            ),
     3 => array(
            'oa' => "#43",
            'ad' => "#43",
            ),
     4 => array(
            'oa' => "#44",
            'ad' => "#44",
            ),
     5 => array(
            'oa' => "Mae hi'n byw yng Nghaerdydd.",
            'ad' => "Hi'n byw yng Nghaerdydd.",
            ),
     6 => array(
            'oa' => "Mae hi'n astudio Seicoleg yn y Brifysgol.",
            'ad' => "Hi'n astudio Seicoleg yn y Brifysgol.",
            ),
     7 => array(
            'oa' => "Mae o'n dod o Ryl yn wreiddiol.",
            'ad' => "O'n dod o Ryl yn wreiddiol.",
            ),
     8 => array(
            'oa' => "Mae o'n yfed lot o gwrw.",
            'ad' => "O'n yfed lot o gwrw.",
            ),
     9 => array(
            'oa' => "Dan ni'n neidio o gwmpas ar y gwely.",
            'ad' => "Ni'n neidio o gwmpas ar y gwely.",
            ),
    10 => array(
            'oa' => "Dan ni'n licio mynd i Sbaen.",
            'ad' => "Ni'n licio mynd i Sbaen.",
            ),
    11 => array(
            'oa' => "Dach chi'n dadlau â'r bobl drws nesaf bob hyn a hyn.",
            'ad' => "Chi'n dadlau â'r bobl drws nesaf bob hyn a hyn.",
            ),
    12 => array(
            'oa' => "Dach chi'n byw'n bell o bob man.",
            'ad' => "Chi'n byw'n bell o bob man.",
            ),
    13 => array(
            'oa' => "Maen nhw'n mynd am dro ar y traeth.",
            'ad' => "Nhw'n mynd am dro ar y traeth.",
            ),
    14 => array(
            'oa' => "Maen nhw'n gwisgo yr un crys-t.",
            'ad' => "Nhw'n gwisgo yr un crys-t.",
            ),
    15 => array(
            'oa' => "Mae'r plant yn chwarae efo ffrind.",
            'ad' => "Y plant yn chwarae efo ffrind.",
            ),
    16 => array(
            'oa' => "Mae'r gath yn yfed llefrith.",
            'ad' => "Y gath yn yfed llefrith.",
            ),
    17 => array(
            'oa' => "Mae Sian yn licio pêl-droed yn fawr.",
            'ad' => "Sian yn licio pêl-droed yn fawr.",
            ),
    18 => array(
            'oa' => "Mae Rhian yn siarad Almaeneg hefyd.",
            'ad' => "Rhian yn siarad Almaeneg hefyd.",
            ),
    19 => array(
            'oa' => "Roeddet ti'n siopa am oriawr dwy flynedd yn ôl.",
            'ad' => "Ti'n siopa am oriawr dwy flynedd yn ôl.",
            ),
    20 => array(
            'oa' => "Roeddet ti'n ymweld â dy nain di wythnos dwytha'.",
            'ad' => "Ti'n ymweld â dy nain di wythnos dwytha'.",
            ),
    21 => array(
            'oa' => "Roeddet ti'n ffonio fi neithiwr.",
            'ad' => "Ti'n ffonio fi neithiwr.",
            ),
    22 => array(
            'oa' => "Roeddet ti'n canu mewn côr yn blentyn.",
            'ad' => "Ti'n canu mewn côr yn blentyn.",
            ),
    23 => array(
            'oa' => "#43",
            'ad' => "#43",
            ),
    24 => array(
            'oa' => "#44",
            'ad' => "#44",
            ),
    25 => array(
            'oa' => "#45",
            'ad' => "#45",
            ),
    26 => array(
            'oa' => "#46",
            'ad' => "#46",
            ),
    27 => array(
            'oa' => "Byddi di'n galw dy daid di 'fory.",
            'ad' => "Ti'n galw dy daid di 'fory.",
            ),
    28 => array(
            'oa' => "Byddi di'n siarad efo fy athro i wythnos nesaf.",
            'ad' => "Ti'n siarad efo fy athro i wythnos nesaf.",
            ),
    29 => array(
            'oa' => "Byddi di'n chwarae pêl-fasged efo Dylan nes ymlaen.",
            'ad' => "Ti'n chwarae pêl-fasged efo Dylan nes ymlaen.",
            ),
    30 => array(
            'oa' => "Byddi di'n mynd ar wyliau yn y Swistir flwyddyn nesaf.",
            'ad' => "Ti'n mynd ar wyliau yn y Swistir flwyddyn nesaf.",
            ),
    31 => array(
            'oa' => "Wnest ti neud dy waith cartref di yn dda ddoe.",
            'ad' => "Ti neud dy waith cartref di yn dda ddoe.",
            ),
    32 => array(
            'oa' => "Wnest ti fwydo'r planhigion mwy nag wythnos yn ôl.",
            'ad' => "Ti fwydo'r planhigion mwy nag wythnos yn ôl.",
            ),
    33 => array(
            'oa' => "Wnest ti enill y gêm tro dwytha'.",
            'ad' => "Ti enill y gêm tro dwytha'.",
            ),
    34 => array(
            'oa' => "Wnest ti ateb y neges John neithiwr.",
            'ad' => "Ti ateb y neges John neithiwr.",
            ),
    35 => array(
            'oa' => "Wnei di 'sgubo 'fory.",
            'ad' => "Ti 'sgubo 'fory.",
            ),
    36 => array(
            'oa' => "Wnei di drwsio'r ffenest ac wna i drwsio'r drws.",
            'ad' => "Ti drwsio'r ffenest ac wna i drwsio'r drws.",
            ),
    37 => array(
            'oa' => "Wnei di baratoi'r bwyd ar gyfer y parti wythnos nesaf.",
            'ad' => "Ti baratoi'r bwyd ar gyfer y parti wythnos nesaf.",
            ),
    38 => array(
            'oa' => "Wnei di nôl y plant o'r ysgol yfory.",
            'ad' => "Ti nôl y plant o'r ysgol yfory.",
            ),
    39 => array(
            'oa' => "Rwyt ti 'di gwastrafi amser.",
            'ad' => "Ti 'di gwastrafi amser.",
            ),
    40 => array(
            'oa' => "Rwyt ti 'di golchi'r llestri.",
            'ad' => "Ti 'di golchi'r llestri.",
            ),
    41 => array(
            'oa' => "Rwyt ti 'di darllen yr holl lyfr.",
            'ad' => "Ti 'di darllen yr holl lyfr.",
            ),
    42 => array(
            'oa' => "Rwyt ti 'di enill y cwis tafarn.",
            'ad' => "Ti 'di enill y cwis tafarn.",
            ),
    43 => array(
            'oa' => "Rwyt ti'n chwarae tennis yn dda.",
            'ad' => "Ti'n chwarae tennis yn dda.",
            ),
    44 => array(
            'oa' => "Rwyt ti'n tecstio at dy ffrindiau yn aml.",
            'ad' => "Ti'n tecstio at dy ffrindiau yn aml.",
            ),
    45 => array(
            'oa' => "Rwyt ti'n gwrando at Radio Cymru.",
            'ad' => "Ti'n gwrando at Radio Cymru.",
            ),
    46 => array(
            'oa' => "Rwyt ti'n eistedd yn y 'stafell fyw.",
            'ad' => "Ti'n eistedd yn y 'stafell fyw.",
            ),
    47 => array(
            'oa' => "Wyt ti'n bwyta cinio rwan?",
            'ad' => "Ti'n bwyta cinio rwan?",
            ),
    48 => array(
            'oa' => "Wyt ti'n licio mynd am dro?",
            'ad' => "Ti'n licio mynd am dro?",
            ),
    49 => array(
            'oa' => "Wyt ti'n cael cawod heno?",
            'ad' => "Ti'n cael cawod heno?",
            ),
    50 => array(
            'oa' => "Wyt ti'n dilyn Pobol y Cwm ar S4C?",
            'ad' => "Ti'n dilyn Pobol y Cwm ar S4C?",
            ),
    51 => array(
            'oa' => "Dwyt ti ddim yn yfed lot fel arfer.",
            'ad' => "Ti ddim yn yfed lot fel arfer.",
            ),
    52 => array(
            'oa' => "Dwyt ti byth yn bwyta siocled.",
            'ad' => "Ti ddim yn bwyta siocled.",
            ),
    53 => array(
            'oa' => "Dwyt ti ddim yn siarad efo Glyn rhagor.",
            'ad' => "Ti ddim yn siarad efo Glyn rhagor.",
            ),
    54 => array(
            'oa' => "Dwyt ti ddim yn cael mynd adra eto.",
            'ad' => "Ti ddim yn cael mynd adra eto.",
            ),
    55 => array(
            'oa' => "#43",
            'ad' => "#43",
            ),
    56 => array(
            'oa' => "#44",
            'ad' => "#44",
            ),
    57 => array(
            'oa' => "#45",
            'ad' => "#45",
            ),
    58 => array(
            'oa' => "#46",
            'ad' => "#46",
            ),
    59 => array(
            'oa' => "Y ti sy'n coginio cinio heno.",
            'ad' => "Y ti'n coginio cinio heno.",
            ),
    60 => array(
            'oa' => "Y ti sy'n rhoi'r ddarlith.",
            'ad' => "Y ti'n rhoi'r ddarlith.",
            ),
    61 => array(
            'oa' => "Y ti sy'n casglu'r plant o'r ysgol.",
            'ad' => "Y ti'n casglu'r plant o'r ysgol.",
            ),
    62 => array(
            'oa' => "Y ti sy'n dod â photel o win.",
            'ad' => "Y ti'n dod â photel o win.",
            ),
    63 => array(
            'oa' => "Ffonio'r gwasanaeth tân wyt ti.",
            'ad' => "Ffonio'r gwasanaeth tân ti.",
            ),
    64 => array(
            'oa' => "Mynd i'r cigydd wyt ti.",
            'ad' => "Mynd i'r cigydd ti.",
            ),
    65 => array(
            'oa' => "Siarad efo ffrind wyt ti.",
            'ad' => "Siarad efo ffrind ti.",
            ),
    66 => array(
            'oa' => "Ymarfer Karate wyt ti.",
            'ad' => "Ymarfer Karate ti.",
            ),
    67 => array(
            'oa' => "Dillad wyt ti'n prynu.",
            'ad' => "Dillad ti'n prynu.",
            ),
    68 => array(
            'oa' => "I'r canolfan hamdden wyt ti'n mynd.",
            'ad' => "I'r canolfan hamdden ti'n mynd.",
            ),
    69 => array(
            'oa' => "Paned wyt ti'n yfed.",
            'ad' => "Paned ti'n yfed.",
            ),
    70 => array(
            'oa' => "Yr heddlu wyt ti'n osgoi.",
            'ad' => "Yr heddlu ti'n osgoi.",
            ),
    71 => array(
            'oa' => "Dw i'n meddwl fod ti'n gyrru yn dda.",
            'ad' => "Dw i'n meddwl ti'n gyrru yn dda.",
            ),
    72 => array(
            'oa' => "Mae'n bosib fod ti'n gwneud gormod.",
            'ad' => "Mae'n bosib ti'n gwneud gormod.",
            ),
    73 => array(
            'oa' => "Mae Alun yn credu fod ti'n gofyn am lawer.",
            'ad' => "Mae Alun yn credu ti'n gofyn am lawer.",
            ),
    74 => array(
            'oa' => "Dan ni'n gobeithio fod ti'n medru enill.",
            'ad' => "Dan ni'n gobeithio ti'n medru enill.",
            ),
    75 => array(
            'oa' => "Sut wyt ti'n mynd i Wrecsam?",
            'ad' => "Sut ti'n mynd i Wrecsam?",
            ),
    76 => array(
            'oa' => "Be' wyt ti'n deud wrth Gwen am y ddamwain?",
            'ad' => "Be' ti'n deud wrth Gwen am y ddamwain?",
            ),
    77 => array(
            'oa' => "Pwy wyt ti'n ei warhodd?",
            'ad' => "Pwy ti'n ei warhodd?",
            ),
    78 => array(
            'oa' => "Pryd wyt ti'n symyd i'r Drenewydd?",
            'ad' => "Pryd ti'n symyd i'r Drenewydd?",
            ),
    79 => array(
            'oa' => "Lle wyt ti'n mynd i?",
            'ad' => "Lle ti'n mynd i?",
            ),
    80 => array(
            'oa' => "Be' wyt ti'n golchi dy gi efo?",
            'ad' => "Lle ti'n golchi dy gi efo?",
            ),
    81 => array(
            'oa' => "Lle wyt ti'n mynd i yn nes ymlaen?",
            'ad' => "Lle ti'n mynd i yn nes ymlaen?",
            ),
    82 => array(
            'oa' => "Pwy wyt ti'n siarad efo?",
            'ad' => "Pwy ti'n siarad efo?",
            ),
    83 => array(
            'oa' => "O le wyt ti'n dod yn wreiddiol?",
            'ad' => "O le ti'n dod yn wreiddiol?",
            ),
    84 => array(
            'oa' => "Efo pwy wyt ti'n dawnsio?",
            'ad' => "Efo pwy ti'n dawnsio?",
            ),
    85 => array(
            'oa' => "Ers pryd wyt ti'n byw yma?",
            'ad' => "Ers pryd ti'n byw yma?",
            ),
    86 => array(
            'oa' => "Ar pa' gwch wyt ti'n mynd?",
            'ad' => "Ar pa' gwch ti'n mynd?",
            ),
);
?>
