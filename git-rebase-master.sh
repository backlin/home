#!/usr/bin/env bash

git checkout master
bash $HOME/git/home/git-pull-prune.sh
git checkout -
git rebase master

