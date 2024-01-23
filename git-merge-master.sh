#!/usr/bin/env bash

git checkout master
$HOME/git/home/git-pull-prune.sh
git checkout -
git merge master --no-ff

