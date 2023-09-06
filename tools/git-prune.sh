#!/usr/bin/env bash

set -e
git checkout master
git pull --rebase

git remote prune origin

# echo "Removing orphaned feature branches"
# git br -vv | grep ": gone]" | awk '{print $1;}' | xargs git branch -D
for BRANCH in $(git br -vv | grep ": gone]" | awk '{print $1;}') #| xargs git branch -D
do
  echo "Remote $BRANCH has lost its upstream (presumably PR merged or closed)"
  git branch -D $BRANCH
done

