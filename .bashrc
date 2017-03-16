# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

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

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


#-------------------------------------------------------------

alias o='nautilus --no-desktop --new-window . >/dev/null 2>&1'
alias pdf='clear; evince'
alias c='clear'
alias cc='clear && ls -a'
alias ..='cd ..'
alias eee='exit'
alias mv='mv -i "$@"'
alias rm='rm -i "$@"'
alias cp='cp -i "$@"'
alias img='eog "$@"'
alias pp='python3 "$@"'

alias gitgo='git add -u .; git commit; git push -u origin master'
alias gcom='git commit'
alias gpush='git push -u origin master'
alias gstat='git status'

alias usb='cd /media/leo/ '
alias trash='cd .local/share/Trash/files/'
#alias vv='vim ~/vimwiki/index.wiki'

# Using https://github.com/dxwc/youtube_subscriber
alias ytube='cd ~/Documents/misc/youtube_subscriber/executable_and_data/; 1>/dev/null ./ytube_gui &'
alias ysub='cd ~/Documents/misc/youtube_subscriber/executable_and_data/; ./run -sub "$@"'
alias yview='cd ~/Documents/misc/youtube_subscriber/executable_and_data/; ./run -gen -view'

alias m='echo "#########################################################"'

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

PS1='\[\e]0;\u@\h: \w\a\]\[\]\[\][\[\e[01;32m\]\[\e[00m\]\w]\[\]$(if [[ $? == 0 ]]; then echo "\[\]"; else echo "\[\]"; fi) \[\]'

function cd
{
    builtin cd "$@" && clear && ls -a
}
function glog
{
	clear
	git log --graph --pretty=format:'%C(bold black)%s%Creset %C(bold blue)- %an%Creset %Cgreen(%cr)%Creset' --abbrev-commit
	echo ""
}
temp()
{
	local tdir=$(mktemp -d /tmp/deleteme-XXX)
	cd $tdir
}
test()
{
	local tdir=$(mktemp -d /tmp/deleteme-XXX)
	cd $tdir
cat > Makefile <<"EOF"
all:
	g++ -std=c++14 test.cpp
EOF
	vim test.cpp
}

# Most things are copied from somewhere

alias go='cd Documents/misc/; ./run -gen -view; exit'

site()
{
    if [ -z "$@" ]; then
        echo "Need filename"
    else
        if [[ "$@" == *.md ]]; then
#EDIT THE LINE BELOW, NEEDS ABSOLUTE URL TO THE TEMPLATE FILE
            pandoc -s --template=/home/leo/dxwc.github.io/mdhtml_pandoc.templ -o $(basename "$@" .md).html "$@"
        else
            echo "Not markdown (.md) file"
        fi
    fi
}
