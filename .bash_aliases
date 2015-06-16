
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
if echo $HOSTNAME | grep -q '^tintin'; then
    # Mats' project
    PROJ="p2010042"
else
    # Ann-Christine's project
    PROJ="b2010028"
fi
alias score='salloc --no-shell -J inter -p core -A '$PROJ' -t'
alias snode='salloc --no-shell -J inter -p node -N 1 -A '$PROJ' -t'
alias scancelsleep='myq | grep inter | cut -c 10-18 | xargs scancel'
alias pq='squeue -A '$PROJ
alias myq='squeue | grep chrib'

alias tmux="TERM=xterm-256color tmux"
