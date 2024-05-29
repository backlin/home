#!/usr/bin/env bash

if [ ! -f $HOME/.vim/bundleVundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim -c ':PluginInstall'

