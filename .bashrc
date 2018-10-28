#source /usr/share/defaults/etc/profile
#set -o vi

### Files ###
alias ls='ls --color=auto'
alias c='clear'
alias cc='clear && ls -a'
alias ..='cd ..'
function cd
{
    builtin cd "$@" && clear && ls -a
}
alias eee='exit'
alias mv='mv -i "$@"'
alias rm='rm -i "$@"'
alias cp='cp -i "$@"'
alias whereis='find . -name "$@"'

### Applications ###
alias pp='python3 "$@"'
alias o='nautilus --no-desktop --new-window . &'
alias pdf='clear; evince &'
alias gstat='git status'
alias ff='firefox -no-remote -P &'
alias n='clear; node ~/Documents/notify_nyc/index.js | less -R'
alias op='xdg-open &>/dev/null'
alias sub='nvm exec 8.11.4 sub "@"'

### Others ###
alias m='echo "####################################################"'
alias temp='cd $(mktemp -d /tmp/deleteme-XXX)'
alias grep='grep --color=auto $"@"'

alias cl='cd ~/Documents/college/'

#export PATH=$HOME/scripts/bin/:$PATH
#task list
PS1="[\w] "

export EDITOR=vim
export VISUAL=vim
xdg-mime default vim.desktop text/plain

function mac
{
    sudo echo "-Turning off wifi"
    nmcli networking off
    echo "-Waiting a second"
    sleep 1
    echo "-Changing mac to original address"
    sudo macchanger -p wlp1s0
    echo "-Changing mac to similar random address"
    sudo macchanger -a wlp1s0
    echo "-Turning on wifi"
    nmcli networking on
}

# https://superuser.com/a/611582
function countdown(){
   clear;
   date1=$((`date +%s` + $1));
   while [ "$date1" -ge `date +%s` ]; do
     echo -ne "$2 $(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
   clear;
}
function stopwatch(){
  clear;
  date1=`date +%s`;
   while true; do
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
   done
  clear;
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

setxkbmap -option caps:swapescape

alias note='/usr/local/bin/note "$@"'
