#!/usr/bin/env bash

ln .bash_aliases ~/.bash_aliases
if [[ $(uname) == Darwin ]]; then
  ln .mac_env ~/.mac_env
fi
if [[ $(uname) == Linux ]]; then
  ln .linux_env ~/.linux_env
fi
ln .psqlrc ~/.psqlrc
ln .tmux.conf ~/.tmux.conf
ln .vimrc ~/.vimrc
ln .zshrc ~/.zshrc
mkdir -p ~/.config/qmk
ln qmk.ini ~/.config/qmk/qmk.ini
