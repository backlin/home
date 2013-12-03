
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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lg='l | grep'
alias llg='ll | grep'
alias lag='la | grep'

# Christofer's aliases
alias psug='ps -u $USER | grep -i'
alias rec='ls -tlRa | head'
alias canhaz='sudo apt-get install'
alias minecraft='java -Xmx1024M -Xms512M -cp ~/Dropbox/Minecraft/Minecraft.jar net.minecraft.LauncherFrame'
alias subgit='git status | grep -v "\.\./"'
alias totalsize="awk '{SUM += $5} END {print SUM}'"
alias cleanmac='find . -iname '._*' -exec rm -rf {} \;'
alias tank='ssh -X -L 8000:redmine:443 -L 8001:helpit:443 -L 8002:mysql:3306 backch@tank'

# Uppmax 
alias daysleeper='salloc --no-shell -A b2010028 -p core -n 1 -t'

