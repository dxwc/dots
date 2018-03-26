source /usr/share/defaults/etc/profile

#################################################
################################### Alias #######
#################################################

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

### Others ###
alias m='echo "####################################################"'
alias temp='cd $(mktemp -d /tmp/deleteme-XXX)'
alias grep='grep --color=auto $"@"'

#################################################
################################### Promt #######
#################################################

PS1="[\w] "
