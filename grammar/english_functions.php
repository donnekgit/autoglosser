function segment_eng($text)
// Segment the verbform.
{
	$text=preg_replace("/^let's$/u", "let#us.pron.1p", $text);  // let's
	$text=preg_replace("/^gonna$/u", "go#to.prep", $text);  // gonna
	$text=preg_replace("/^wanna$/u", "want#to.prep", $text);  // wanna
	$text=preg_replace("/^gotta$/u", "get#to.prep", $text);  // gotta

	// For the elided forms below we need to double the apostrophe in the search pattern.  This is because pg_escape_string in write_cohorts.php adds an additional apostrophe to escape an apostrophe in the word; we need to remove both, otherwise one will get left after the segmentation, and prevent the lookup.
	$text=preg_replace("/''d$/u", "#be.v.cond", $text);  // we'd, he'd, they'd
	$text=preg_replace("/''m$/u", "#be.v.pres", $text);  // I'm
	$text=preg_replace("/''re$/u", "#be.v.pres", $text);  // we're, they're
	$text=preg_replace("/''ll$/u", "#be.v.fut", $text);  // we're
	$text=preg_replace("/''ve$/u", "#have.v.pres", $text);  // we've, they've
	$text=preg_replace("/''s$/u", "#gb", $text);  // father's, that's, he's
	$text=preg_replace("/''n$/u", "#cp", $text);  // her'n, me'n, his'n, your'n
	$text=preg_replace("/n''t$/u", "#neg", $text);  // aren't, wouldn't, don't

	$text=preg_replace("/(?<!i)ly$/u", "#adv", $text);  // quickly
	$text=preg_replace("/ily$/u", "i#adv", $text);  // happily

	$text=preg_replace("/(?<!e)able$/u", "#a.pot", $text);  // treatable
	$text=preg_replace("/eable$/u", "e#a.pot", $text);  // writeable

	$text=preg_replace("/(er)$/u", "#comp.ag", $text); // shorter, worker
	$text=preg_replace("/(est)$/u", "#adj.sup", $text); // shortest

	$text=preg_replace("/(oo(k|l))ing$/u", "$1#asv", $text);  // look, cool
	$text=preg_replace("/(oo(k|l))ed$/u", "$1#av", $text); 
	$text=preg_replace("/(oo(k|l))s$/u", "$1#pv", $text);

	$text=preg_replace("/(oa(m|n))ing$/u", "$1#asv", $text);  // roam, moan
	$text=preg_replace("/(oa(m|n))ed$/u", "$1#av", $text); 
	$text=preg_replace("/(oa(m|n))s$/u", "$1#pv", $text);

	$text=preg_replace("/(ea(k|n))ing$/u", "$1#asv", $text);  // break, clean
	$text=preg_replace("/(ea(k|n))ed$/u", "$1#av", $text); 
	$text=preg_replace("/(ea(k|n))s$/u", "$1#pv", $text);

	$text=preg_replace("/(ing)ing$/u", "$1#asv", $text);  // bring - but note that whinge will be missegmented
	$text=preg_replace("/(ing)s$/u", "$1#pv", $text);

	$text=preg_replace("/(an|in)ning$/u", "$1#asv", $text);  // plan, spin
	$text=preg_replace("/(an|in)ned$/u", "$1#av", $text); 
	$text=preg_replace("/(an|in)s$/u", "$1#pv", $text);

	$text=preg_replace("/(at|us)ing$/u", "$1e#asv", $text);  // incorporate
	$text=preg_replace("/(at|us)ed$/u", "$1e#av", $text); 
	$text=preg_replace("/(at|us)s$/u", "$1e#pv", $text);

	$text=preg_replace("/(be|ee|do|go)ing$/u", "$1#asv", $text);  // be, see, do, go
	$text=preg_replace("/(ee)s$/u", "$1#pv", $text); // see

	$text=preg_replace("/([^aeiou]{1,2}[aeiou][^aeiou]{1,3}[aeiou]{1,2}(t|r|n|p))ing$/u", "$1#asv", $text);
	// visit, bother, happen, gossip
	$text=preg_replace("/([^aeiou]{1,2}[aeiou][^aeiou]{1,3}[aeiou]{1,2}(t|r|n|p))ed$/u", "$1#av", $text); 
	$text=preg_replace("/([^aeiou]{1,2}[aeiou][^aeiou]{1,3}[aeiou]{1,2}(t|r|n|p))s$/u", "$1#pv", $text); 

	$text=preg_replace("/([^aeiou][aeiou]{1,2}(c|v|ng|nc|p|k|t|r|g|l|n|m|tl|s))ing$/u", "$1e#asv", $text);
	// piece, leave (verb), range, wince, gripe, brake, bite, picture, massage, tile, line, become, subtitle, house, acquire
	$text=preg_replace("/([^aeiou][aeiou]{1,2}(c|v|ng|nc|p|k|t|r|g|l|n|m|tl|s))ed$/u", "$1e#av", $text); 
	$text=preg_replace("/([^aeiou][aeiou]{1,2}(c|v|ng|nc|p|k|t|r|g|l|n|m|tl|s))es$/u", "$1e#pv", $text); 

	$text=preg_replace("/([aeiou](nd|nk|nt|rt|rd|rk|lk|pt|sk|st|gn|ng|ct|gh|ll|w|mp|y))ing$/u", "$1#asv", $text);
	// end, print, think, start, walk,  adapt, ask, test, assign, bang, construct, cough, kill, betray, swallow, play, work
	$text=preg_replace("/([aeiou](nd|nt|nk|rt|rd|rk|lk|pt|sk|st|gn|ng|ct|gh|ll|w|mp|y))ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou](nd|nt|nk|rt|rd|rk|lk|pt|sk|st|gn|ng|ct|gh|ll|w|mp|y))s$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou](?<!i|u)r)ing$/u", "$1#asv", $text);  // bother
	$text=preg_replace("/([aeiou](?<!i|u)r)ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou](?<!i|u)r)s$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ing$/u", "$1#asv", $text);  // breaking - but leaving is wrong, meet
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])s$/u", "$1#pv", $text);  // breaks - but leaves is wrong

	$text=preg_replace("/([aeiou][p|t])[p|t]ing$/u", "$1#asv", $text);  // grip
	$text=preg_replace("/([aeiou](ck))ing$/u", "$1#asv", $text);  // back
	$text=preg_replace("/([aeiou][p|t])[p|t]ed$/u", "$1#av", $text);  // grip
	$text=preg_replace("/([aeiou](ck))ed$/u", "$1#av", $text);  // back
	$text=preg_replace("/([aeiou](ck|p|t))s$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou](ch|sh|x))ing$/u", "$1#asv", $text);  // watch, launch, finish, tax, attach
	$text=preg_replace("/([aeiou](ch|sh|x))ed$/u", "$1#av", $text);
	$text=preg_replace("/([aeiou](ch|sh|x))es$/u", "$1#pv", $text); 

	$text=preg_replace("/([aeiou]ss)ing$/u", "$1#asv", $text);  // miss
	$text=preg_replace("/([aeiou]ss)ed$/u", "$1#av", $text);
	$text=preg_replace("/([aeiou]ss)es$/u", "$1#pv", $text);

	$text=preg_replace("/(y|u)ing$/u", "$1#asv", $text); // sully, play, continue
	$text=preg_replace("/(i|u)ed$/u", "$1#av", $text);
	$text=preg_replace("/(i|u)es$/u", "$1#pv", $text);  // controversies

	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ing$/u", "$1#asv", $text);  // breaking - but leaving is wrong
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])ed$/u", "$1#av", $text); 
	$text=preg_replace("/([aeiou][aeiou][bcdfgprstvxz])s$/u", "$1#pv", $text);  // breaks - but leaves is wrong

	// Remember to transfer any changes here to segment_engforin too ...
	$text=preg_replace("/(ee)s$/u", "$1#pl", $text); // employee
	$text=preg_replace("/(sse)s$/u", "$1#pl", $text); // basses
	$text=preg_replace("/(ie)s$/u", "$1#pl", $text); // movie
	$text=preg_replace("/(de)s$/u", "$1#pl", $text); // episode
	$text=preg_replace("/(one)s$/u", "$1#pl", $text); // one

	$text=preg_replace("/(?<![1ieus'])s$/u", "#pv", $text);  // general plural or verb.3s

	return $text;
}

function segment_engforin($text)
// Segment noun plurals.
// Remember to transfer any changes here to segment_eng too ...
{	
	//$text=preg_replace("/_i?o/", "#wv", $text);  // Segment _io/_o endings in Siarad transcriptions, and mark as Welsh verb.
	// Better kept in zero_lookup.php

	$text=preg_replace("/(ee)s$/u", "$1#pl", $text); // employee
	$text=preg_replace("/(ss)es$/u", "$1#pl", $text); // basses
	$text=preg_replace("/(ie)s$/u", "$1#pl", $text); // movie
	$text=preg_replace("/(de)s$/u", "$1#pl", $text); // episode
	$text=preg_replace("/(one)s$/u", "$1#pl", $text); // one
	$text=preg_replace("/(?<![1ieus'])s$/u", "#pl", $text);  // general plural
	return $text;
}

function fix_seg($text)
// Rewrite the initial part to account for spelling corrections                                                            
{
	$text=preg_replace("/i$/u", "y", $text);  // happi > happy
	$text=preg_replace("/(?<!yo)u$/u", "ue", $text);  // continu > continue

	$text=preg_replace("/iv$/u", "if/ve", $text);  // liv > life/live
	$text=preg_replace("/(mov|zomb)y$/u", "$1ie", $text);  // movy > movie

	$text=preg_replace("/^(d|l|t|v)y$/u", "$1ie", $text);  // die, lie, tie, vie, movie, zombie

	$text=preg_replace("/^wo$/u", "will", $text);  // won't
	$text=preg_replace("/^ca$/u", "can", $text);  // can't
	$text=preg_replace("/^ai$/u", "is", $text);  // ain't
	$text=preg_replace("/^sha$/u", "shall", $text);  // ain't

	return $text;
}