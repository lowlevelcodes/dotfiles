#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias ll='ls --color=auto --group-directories-first -lahF'

alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

export EDITOR=$(which vim)
export SYSTEM_EDITOR=$EDITOR
export VISUAL=$EDITOR

export GPG_TTY=$(tty)

if [ "$TERM" != "linux" ]; then
    eval "$(starship init bash)"
fi

