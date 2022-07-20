# codeandkey-dotfiles
# zshrc

# shell config

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# aliases
alias ls='ls --color=auto'
alias vim='nvim'

# set right prompt
setopt PROMPT_SUBST
export PROMPT='$(~/.util/sshnot.sh)%~$(~/.util/git_branch.sh) %# '

# default editor
export EDITOR=nvim

# no shell vim binds
bindkey -e

# tty colors
[ -n "$(echo $TTY | grep tty)" ] && source ~/.cache/wal/colors-tty.sh
