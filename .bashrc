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

alias myIP='curl ifconfig.me'

# Cuase I cna't tyope rite

alias gerp='grep'

# DO EVERYTHINGGGGGGGG

alias up8='sudo apt-get update && sudo apt-get upgrade'

# Condensing sudo apt-get install

alias install='sudo apt-get install'

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
