# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# For when you forget sudo

alias ffs='eval "sudo $(fc -ln -1)"'
alias please='eval "sudo $(fc -ln -1)"'

# To go back and stuff

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Ping Google's DNS

alias pong="ping 8.8.8.8 -c 4"

# Publish python 3 http server for current dir

alias publish='python3 -m http.server 8080'

# Prints your current IP

alias myip='curl ifconfig.me'

# Cuase I cna't tyope rite

alias gerp='grep'

# DO EVERYTHINGGGGGGGG

#alias lolup8='sudo yum update && sudo yum upgrade'

# Ok, that takes 4eva

alias up8='sudo apt-get update'

alias up9='sudo apt-get upgrade'

# Condensing sudo yum install

alias install='sudo apt-get install'
alias remove='sudo apt-get purge'

# Shutdown commands

alias sdn='sudo shutdown -h now'
alias rsn='sudo shutdown -r now'

#Edit this file

alias brcedit='vim ~/.bashrc'

# GODMODE

alias godmode='sudo su'

# fuck dis fuck dat

alias fuck='killall'

# version & cpu info

alias version='cat /proc/version && cat /proc/cpuinfo'

# some stuff for git

alias ga='git add'

alias gc='git commit'

alias gp='git push'

alias cpbrc='cp .bashrc ~/bashrc'
alias addbrc='git add .bashrc'
alias commitbrc='git commit -m "new aliases and stuff"'
alias pushbrc='git push origin master'

# other ips on network

alias ipfind='sudo nmap -sP 192.168.1.0/24'

# again, I cannot speel correctly

alias tial='tail'

# insta LS

alias lsa='ls -a'

function cd {
    dir="${@:-$HOME}"  # ~ isn't expanded when in quotes
    [ -z "${dir}" ] && dir=~
    if ! builtin cd "$dir"
    then
        dir=`compgen -d "${dir}" | head -1`
        if builtin cd "$dir"
        then
            clear
            pwd
            ls -l
        fi
    else
        clear
        pwd
        ls -l
    fi
}


# regex

shopt -s extglob
