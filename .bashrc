#source /usr/share/defaults/etc/profile

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

### Applications ###
alias pp='python3 "$@"'
alias o='nautilus --no-desktop --new-window . &'
alias pdf='clear; evince &'
alias gstat='git status'
alias ff='firefox -no-remote -P &'
alias n='clear; node ~/scripts/notify_nyc/index.js'

### Others ###
alias m='echo "####################################################"'
alias temp='cd $(mktemp -d /tmp/deleteme-XXX)'
alias grep='grep --color=auto $"@"'

PS1="[\w] "
export PATH=$HOME/scripts/bin/:$PATH
