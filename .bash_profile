# Load .bashrc if we login via ssh
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
if [ -f ~/.bash_patches ]; then
  . ~/.bash_patches
fi
export TERM="xterm-256color"

# Include ustom locale settings if they exist
# (gdm parses .profile so these settings will 
# also be active within the Gnome environment).
if [ -f "$HOME/.custom_locale"]; then
       . "$HOME/.custom_locale"
fi
