REPO="$HOME/git/home"
export FISH_HISTORY="$HOME/.local/share/fish/fish_history"

alias conf="vim $HOME/.zshrc $HOME/.vimrc $HOME/.tmux.conf $HOME/.config/fish/config.fish"
alias gs='git status '
alias ga='git add '
alias gb='git br '
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gsh='git push'

alias gll="$REPO/git-pull-prune.sh"
alias gm="$REPO/git-merge-master.sh"
alias gr="$REPO/git-rebase-master.sh"

alias grhh='git reset --hard HEAD'
alias grhh1='git reset --hard HEAD~1'

alias mdm="make -C $HOME/git/ingest/ datamodel"
alias dm=datamodel

