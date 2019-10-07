#source /usr/share/defaults/etc/profile
#set -o vi

### Files ###
alias ls='ls --color=auto'
alias lnew='ls --color=auto -tc -G -h'
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
alias img='sxiv "$@"'
alias cl='cd ~/Documents/college/'
alias note='/usr/local/bin/note "$@"'

### Applications ###
alias pp='python3 "$@"'
alias o='nautilus --no-desktop --new-window . &'
alias pdf='clear; evince &'
alias gstat='git status'
alias ff='firefox -no-remote -P &'
alias n='clear; node ~/Documents/notify_nyc/index.js | less -R'
alias op='xdg-open &>/dev/null'
alias img_clean='exiftool -all= -overwrite_original "$@"'
alias me='ip r'
alias loc='git ls-files | xargs cat | wc -l'
alias locls='git ls-files | xargs wc -l'
alias vid='ls -ct ~/Videos/ | dmenu -i -l 15  -fn 'Hack-30' | xargs -I {} mpv ~/Videos/{} &'
alias r='ranger'
alias img='xsiv -f '

### Others ###
alias m='echo "####################################################"'
alias temp='cd $(mktemp -d /tmp/deleteme-XXX)'
alias grep='grep --color=auto $"@"'
alias godmode='sudo -E su --preserve-environment'

export EDITOR=vim
export VISUAL=vim

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

function get_feed()
{
    curl -s -L "$1" | sfeed_web "$1"
}
function upgo()
{
    sfeed_update
    mkdir -p $HOME/.sfeed/frames
    builtin cd $HOME/.sfeed/frames
    sfeed_frames $HOME/.sfeed/feeds/*
    builtin cd $OLDPWD
    firefox $HOME/.sfeed/frames/index.html
}
function gset()
{
    git init
    git config --list
    echo "git config --local user.name dxwc"
    git config --local user.name dxwc
    echo "git config --local user.email dxwc@users.noreply.github.com"
    git config --local user.email dxwc@users.noreply.github.com
}
function save()
{
    cd $(mktemp -d /tmp/deleteme-XXX)
    wget -d -nv --html-extension -r -l 1 --convert-links --adjust-extension --page-requisites --no-parent --span-hosts --user-agent="" "$@"
    rm -rf ~/.wget-hsts
}
function save_bare()
{
    cd $(mktemp -d /tmp/deleteme-XXX)
    wget -d -nv --html-extension --convert-links --adjust-extension --page-requisites --no-parent --span-hosts --convert-links --timestamping --no-host-directories --user-agent="" "$@"
    rm -rf ~/.wget-hsts
}

PATH=/opt/waterfox/:"$PATH"

u_name=""
if [ "$(whoami)" == "root" ]; then
    u_name="ROOT "
fi
PS1="[$u_name\w] "


trim()
{
    #https://stackoverflow.com/a/1683850
    local trimmed="$1"
    trimmed="${trimmed## }"
    trimmed="${trimmed%% }"
    echo "$trimmed"
}

define()
{
    # npm install -g unfluff
    curl --user-agent "" --silent "https://www.vocabulary.com/dictionary/$(trim $@)" | unfluff | node ~/scripts/stdin_define_json_parse.js
}

rmc()
{
    cd ~/.cache/
    ls --hide=thumbnails . | xargs rm -rf
    cd -
    clear
    echo "cleaned, ls ~/.cache : $(ls ~/.cache)"
}



