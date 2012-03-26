<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2010, 2011.
kevindonnelly.org.uk
This file is part of the Bangor Autoglosser.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/ 

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$chain=1;

//include("histcorpus/cgimport.php");

//include("histcorpus/rewrite_utterances.php");

include("histcorpus/write_cohorts.php");

include("histcorpus/apply_cg.php");

include("histcorpus/write_cgfinished.php");

include("histcorpus/join_tags.php");

//include("histcorpus/tidy_or.php");

include("histcorpus/generate_expex.php");

//exec("pdflatex -interaction=nonstopmode -output-directory=outputs/groniosaw outputs/groniosaw/groniosaw.tex 2>&1");
exec("pdflatex -interaction=nonstopmode -output-directory=outputs/ryan outputs/ryan/ryan.tex 2>&1");

?>
