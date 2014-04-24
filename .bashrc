# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# To do immediately

######################################
### SET PATHS AND EDITORS AND SUCH ###
######################################

export PATH=/home/eric/autowget:$PATH
export EDITOR=/usr/bin/vim

###############
### COLORS ####
###############

export TERM=xterm-256color

#PS1='[\u@\h \W]\$ '  # Default
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] ' # Simple

#PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( $(sed -nu "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo)/1024))"\033[38;5;22m/"$(($(sed -nu "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo)/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"' # Cool stuff on first line

#PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ ' # Advanced

#return value visualisation
PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\];)\"; else echo \"\[\033[01;31m\];(\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "

trap 'echo -ne "\e[0m"' DEBUG


### MORE COLORS ###

olor_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

###################
### SET ALIASES ###
###################

# Because I always forget what #!'s file manager is
alias filemanager='thunar'
alias nautilus='thunar'
alias whatthefuckisit='thunar'

# For when you forget sudo (better than sudo !!)

alias ffs='eval "sudo $(fc -ln -1)"'
alias please='eval "sudo $(fc -ln -1)"'

# Encrypted vim Ignire vimenc - it's single-file use

alias vimenc="vim -u ~/.encrypted_vim_rc -x filename.txt"
alias vimx="vim -u ~/.encrypted_vim_rc -x"

# To go back and stuff

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Ping Google's DNS (can also ping 8.8.4.4)

alias pong="ping 8.8.8.8 -c 4"

# Publish python 3 http server for current dir - can change the port I think

alias publish='python3 -m http.server 8080'

# Prints your current IP

alias myip='curl ifconfig.me'

# Cuase I cna't tyope rite

alias gerp='grep'
alias tial='tail'

# Condensing sudo yum update/upgrade

alias up8='sudo apt-get update'
alias up9='sudo apt-get upgrade'

# Condensing sudo yum install/remove

alias install='sudo apt-get install'
alias remove='sudo apt-get purge'

# Shutdown commands

alias sdn='sudo shutdown -h now'
alias rsn='sudo shutdown -r now'

# Edit this file

alias brcedit='vim ~/.bashrc'

# GODMODE - please don't abuse this on your own machine

alias godmode='sudo su'

# More fun than typing killall

alias fuck='killall'

# version & cpu info

alias version='cat /proc/version && cat /proc/cpuinfo'

# Some stuff for git you can ignore the parts about .bashrc

alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gpom='git push origin master'
alias gp='git push'
alias cpbrc='cp ~/.bashrc /home/eric/bashrc'
alias addbrc='cd ~/bashrc git add .bashrc'
alias commitbrc='bashrc git commit -m "new aliases and stuff"'
alias pushbrc='git push origin master'

# other ips on network

alias ipfind='sudo nmap -sP 192.168.1.0/24'

# because I use ls a lot

alias lsa='ls -a'
alias lsal='ls -al'
alias lsl='ls -l'

# fun stuff

alias ie7='wine C:\\Program\ Files\\Internet\ Explorer\\iexplore'
alias bob='curl http://www.bobrossquotes.com/text.php'

#################
### FUNCTIONS ###
#################

# Performs ls -l on cd

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

# only enter rsa passphrase once per login

added_keys=`ssh-add -l`

if [ ! $(echo $added_keys | grep -o -e id_rsa) ]; then
       ssh-add "$HOME/.ssh/id_rsa"
    fi

###########################################
## This does something important I think ##
###########################################

shopt -s extglob


