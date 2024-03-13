#!/usr/bin/env bash

git stash
bash $HOME/git/home/git-pull-prune.sh
git stash pop

