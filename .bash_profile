# Load .bashrc if we login via ssh
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
if [ -f ~/.bash_patches ]; then
  . ~/.bash_patches
fi
export TERM="xterm-256color"

