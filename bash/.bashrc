#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='$(~/.util/sshnot.sh)\w$(~/.util/git_branch.sh) $ '

# aliases
alias ls='ls --color=auto'

# editor
which nvim && alias vim=nvim
export EDITOR=vim

# gpg
export GPG_TTY=$(tty)
