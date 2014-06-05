
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lg='l | grep'
alias llg='ll | grep'
alias lag='la | grep'

alias psug='ps -u $USER | grep -i'
alias rec='ls -tlRa | head'
alias canhaz='sudo apt-get install'
alias subgit='git status | grep -v "\.\./"'
alias totalsize="awk '{SUM += $5} END {print SUM}'"
alias cleanmac='find . -iname '._*' -exec rm -rf {} \;'

# Uppmax 
alias snode='salloc --no-shell -A b2010028 --qos=b2010028_4nodes -p node -N 1 -J inter -t'
alias score='salloc --no-shell -A b2010028 --qos=b2010028_4nodes -p core -J inter -t'
alias scancelsleep='myq | grep inter | cut -c 10-18 | xargs scancel'
alias mmq='squeue -A b2010028'
alias myq='squeue | grep chrib'

alias tmux="TERM=xterm-256color tmux"
