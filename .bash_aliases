REPO="$HOME/git/home"

alias gs='git status '
alias ga='git add '
alias gb='git br '
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gsh='git push'

alias gll="$REPO/git-pull-prune.sh"
alias gsl="$REPO/git-stash-pull.sh"
alias gm="$REPO/git-merge-master.sh"
alias gr="$REPO/git-rebase-master.sh"

alias grhh='git reset --hard HEAD'
alias grhh1='git reset --hard HEAD~1'

alias mdm="make -C $HOME/git/ingest/ datamodel"
alias dm=datamodel

alias ls=eza # https://eza.rocks/
alias la='eza -la --git'

