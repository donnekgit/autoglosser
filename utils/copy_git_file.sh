#!/bin/bash
#
# Based on https://gist.github.com/voltagex/3888364, but edited
# Inspired by http://blog.neutrino.es/2012/git-copy-a-file-or-directory-from-another-repository-preserving-history/
#
# Copy a file or directory out of a git repository, preserving history!
# Creates DESTINATION with patches that can be applied with git am
 
# Usage: copy_git_file.sh my/source/repo/myfile my/destination/repo/
# eg copy_git_file.sh cylist.sql ~/autoglosser/dbs ~/newcylist
# FILE=$1  # The first argument to the script - the file you want moved.
# SOURCE=$2  # The second argument to the script - the dir in the existing repo where the file is located.
# DESTINATION=$3  # The third argument to the script - the dir which will be the new repo.

# Alternatively, if it's the same file all the time, just hardcode the paths, and then run copy_git_file.sh
FILE=cylist.sql  # The first argument to the script - the file you want moved.
SOURCE=/home/kevin/autoglosser/dbs  # The second argument to the script - the dir in the existing repo where the file is located.
DESTINATION=/home/kevin/data/cylist

mkdir -p $DESTINATION
 
cd $SOURCE
git format-patch -o $DESTINATION $(git log $SOURCE/$FILE | grep ^commit | tail -1 | awk '{print $2}')^..HEAD $SOURCE/$FILE

cd $DESTINATION
git init $DESTINATION
git am $DESTINATION/*.patch
rm $DESTINATION/*.patch
