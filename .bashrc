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

export WTF=$HOME/bin
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANT_HOME=/usr/share/ant
export ANDROID_HOME=$HOME/adt-bundle-linux-x86_64-20140321/sdk/tools
export ANDROID_PLATFORM_TOOLS=$HOME/adt-bundle-linux-x86_64-20140321/sdk/platform-tools
export EDITOR=/usr/bin/vim
export PYTHONPATH=$HOME/github-repos/core/openelex
export GOPATH=$HOME/gopath
export GOBIN=$GOPATH/bin
export OPENELEX_SETTINGS=$HOME/github-repos/openelections-core/settings.py
export NIM_PATH=$HOME/nim/bin/
export CIVIX_PATH=$HOME/github-repos/civicrm/civix
export kk=$HOME/.gem/ruby/2.2.0/bin


export PATH=$PATH:$ANT_HOME:$JAVA_HOME:$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:/usr/local/go/bin:/sbin/:$NIM_PATH:$CIVIX_PATH:$WTF:$GOBIN:$kk

# Perl

PERL_MB_OPT="--install_base \"/home/eric/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/eric/perl5"; export PERL_MM_OPT;



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

# Prompt
#PS1="$HC$FBLK[$FBLE\u$FBLK]$FBLK$FBLK[$FBLE\w$FBLK]\$$FBLK$RS "
#PS1="$HC$FBLK┌─╼$FBLK[$FBLE\u$FBLK]$FBLK╾─╼$FBLK[$FBLE\w$FBLK]$FBLK\n└─╼$RS "

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

# Color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white
  
# Colored ManPages:
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

###################
### SET ALIASES ###
###################

alias vims='vim $(fzf)'

alias ls='ls --color=auto'

# idk why i have to do this
# jk, dont have to anymore
# alias hurryup='sudo killall wpa_supplicant'

# easily create a password
alias pwpls='dd if=/dev/urandom bs=32 count=1 2> /dev/null | sha256sum | cut -b'

# speed test
alias howfast='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

# battery %
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

# BE SAFE
alias rm='rm --preserve-root'

# I suck
alias CLEAR='clear'

# I hate typing this

alias null='2>/dev/null 1>&2 '

# What's so big?

alias big='du -hsx * | sort -rh | head -10'

# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/lol/lol.plugin.zsh

alias rtfm='man'
alias icanhas='mkdir'
alias gimmeh='touch'
alias donotwant='rm'
alias dowant='cp'
alias gtfo='mv'
alias nowai='chmod'
alias moar='more'
alias tldr='less'

# https://github.com/relevance/etc/blob/master/bash/aliases.sh

alias h?='history | grep '

# shorter for chromium

#alias chrome='chromium'

# Redirect FF errors to /dev/null

alias firefox='2>/dev/null 1>&2 firefox &'

# random

alias random='command fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n'
alias calendar='sed -n "/$(date +%m\\/%d\\\|%b\*\ %d)/p" $(find ~/.calendar /usr/share/calendar -maxdepth 1 -type f -name "c*" 2>/dev/null);'

# Because I always forget what #!'s file manager is
alias filemanager='thunar'
alias nautilus='thunar'
alias whatthefuckisit='thunar'

## New commands ##
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument

# Because apparently OpenOffice != LibreOffice

alias openoffice='libreoffice'

# For when you forget sudo (better than sudo !!)

alias ffs='eval "sudo $(fc -ln -1)"'
alias please='eval "sudo $(fc -ln -1)"'

# Encrypted vim Ignire vimenc - it's single-file use

alias vimenc="vim -u ~/.encrypted_vim_rc -x filename.txt"
alias vimx="vim -u ~/.encrypted_vim_rc -x"

# Move everything back one dir

alias backwards="find . -mindepth 1 -maxdepth 1 -exec mv -t.. -- {} +"

# To go back and stuff

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Ping Google's DNS (can also ping 8.8.4.4)

alias pong="ping 8.8.8.8 -c 4"
alias pingdomain="ping google.com -c 4"
alias pingserver="ping 173.194.33.130 -c 4"


# Publish python 3 http server for current dir - can change the port I think

alias publish='python3 -m http.server 8080'

# Prints your current IP

alias myip='curl -s icanhazip.com'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Cuase I cna't tyope rite

alias gerp='grep'
alias tial='tail'

# Condensing sudo yum update/upgrade

#alias up8='sudo apt-get update'
#alias up9='sudo apt-get upgrade'

alias up8='sudo pacman -Syy'
alias up9='sudo pacman -Syu'

# Condensing sudo yum install/remove

#alias install='sudo apt-get install'
#alias remove='sudo apt-get purge'

alias install='sudo pacman -S'
alias remove='sudo pacman -R'
alias search='sudo pacman -Ss'
alias create='sudo pacman -U'
alias yolo='yaourt'

# Shutdown commands

# old
#alias sdn='sudo shutdown -h now'
#alias rsn='sudo shutdown -r now'

alias sdn='sudo systemctl poweroff'
alias rsn='sudo systemctl reboot'

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
alias gcmc='git commit -m "$(curl https://raw.githubusercontent.com/ngerakines/commitment/master/commit_messages.txt | shuf -n 1)"'
alias gpom='git push origin master'
alias gpgh='git push origin gh-pages'
alias gp='git push'
alias cpbrc='cp ~/.bashrc /home/eric/bashrc'

# other ips on network

alias ipfind='sudo nmap -sP 192.168.1.0/24'

# SSH 

alias home='ssh -p 5212 eric@76.121.113.163'
#alias thedinosaur='ssh -p 5212 eric@192.168.1.2'
#alias home='ssh -p 5212 eric@67.183.194.9'

# Mysite

alias mysite='mysite && exit'

# because I use ls a lot

alias lsa='ls -a'
alias lsal='ls -al'
alias lsl='ls -l'

# because 2>/dev/null 1>&2 is hard to type

alias no='1>/dev/null 2>&1'

# fun stuff

alias ie7='wine C:\\Program\ Files\\Internet\ Explorer\\iexplore'
alias bob='curl http://www.bobrossquotes.com/text.php'

# commands for i3
alias halp='cat ~/.i3/config'

alias docstrip="unzip -p some.docx word/document.xml | sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g'"

alias randcommit="curl -s http://whatthecommit.com | perl -p0e '($_)=m{<p>(.+?)</p>}s'"

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

#added_keys=`ssh-add -l`

#if [ ! $(echo $added_keys | grep -o -e id_rsa) ]; then
#       ssh-add "$HOME/.ssh/id_rsa"
#fi

###########################################
## This does something important I think ##
###########################################

shopt -s extglob

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
