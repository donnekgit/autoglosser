# This script, from Brian MacWhinney, converts <abcdefg> ["] in the speech tier to “abcdefg”.

# -*-perl-*-
eval 'exec perl -wCSDA -pi -S "$0" ${1+"$@"}'
  if 0;
#!perl

use strict;
use warnings;

# [^ foo] is not an annotation
# +< is not the start of a bracket

# Note: we do not properly handle nested groups!

## Explicit group

# If there is an annotation after, need to keep grouping
s/(?<!\+)<([^>]+)>\s*\[\"\](?=\s*\[(?!\^))/<\x{201C}$1\x{201D}>/g;

# No annotation after, so remove grouping
s/(?<!\+)<([^>]+)>\s*\[\"\]/\x{201C}$1\x{201D}/g;

## Implicit group

# If there is an annotation after, need to add grouping
s/([^\s<>]+)\s*\[\"\](?=\s*\[(?!\^))/<\x{201C}$1\x{201D}>/g;

# No annotation after, so no grouping
s/([^\s<>]+)\s*\[\"\]/\x{201C}$1\x{201D}/g;
