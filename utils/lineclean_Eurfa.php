<?php

// This script cleans the surface line in the combined corpora for use in Eurfa as a citation source.
// Run utils/sh_pg_stuff (with the relevant section uncommented) first to get the corpus.
// Takes 32 minutes to run for Siarad, and 11 minutes for Patagonia (best to delete short utterances first - see below; this brings it down to 16 mins for Siarad, and 4 mins for Patagonia).
// This still leaves underlines.  That isn't really a problem.
// corpsiar is the Siarad corpus.
// corppat is the Patagonia corpus.

include("includes/fns.php");
include("/opt/autoglosser/config.php");

$sql=query("select filename, utterance_id, surface from corpsiar;");
while ($row=pg_fetch_object($sql))
{
	echo $row->surface."\n";
	$welsh=pg_escape_string(lineclean_corpus($row->surface));
	$sql_i=query("update corpsiar set welsh='$welsh' where filename='$row->filename' and utterance_id=$row->utterance_id;");
}

// For corppat, there are 37,500 utterances.
// Clean the corpus by taking out short utterances of less than 20 characters:
//delete from corppat where length(welsh)<20;
// This takes out almost 20,000 rows, leaving 17,700.

// To get rid of the Spanish in Patagonia, run utils/detect_lang.php - takes 4 minutes for corppat.
//  The precode field in the _cgutterances files will only catch Spanish utterances where the default language is Welsh - it won't catch Spanish utterances where the default language is Spanish! :-( Stupid format.
// With Lingua::Identify 0.54, about 5,600 of the remaining items in corppat were tagged as not Welsh; with 0.56, about 5,700.
// langid 	count
// 	60
// cs	170
// cy	12018
// da	227
// de	230
// en	154
// es	1798
// fi	201
// fr	103
// hr	119
// hu	12
// id	459
// it	304
// la	91
// nl	188
// pl	489
// pt	377
// ro	120
// sl	106
// sq	60
// sv	129
// tr	174
// From visual inspection:
//select welsh, langid from corppat where langid !='cy' order by langid;
// only the es and pt items are worth removing en masse:
//delete from corppat where langid ='es' or langid='pt';
// The others have some Spanish, but are mainly Welsh.  This means that when searching for citations for English words, a few Spanish items may come up.

// This leaves around 15,500 items in corppat.

// For corpsiar, there are over 78,000 utterances.
// Delete short items:
//delete from corpsiar where length(welsh)<20;
// This takes out almost 36,000 rows, leaving 42,000.  Running utils/detect_lang.php took 16 minutes for corpsiar., and marked over 13,300 items as non-Welsh.
// langid 	count
//  	117
// cs	603
// cy	28955
// da	906
// de	552
// en	1848
// es	606
// fi	407
// fr	438
// hr	199
// hu	380
// id	854
// it	1728
// la	172
// nl	596
// pl	1273
// pt	663
// ro	286
// sl	379
// sq	131
// sv	374
// tr	83
//Even the items marked English here were about 50% Welsh, so probably best not to delete them en masse.  So some English will remain in the "welsh" column.

// This leaves around 42,300 items in corpsiar.





?>