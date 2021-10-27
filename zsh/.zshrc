# zshrc

# apply wal scheme
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

export ZSH="/home/jtst/.oh-my-zsh"

# shell config

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

# oh-my-zsh
#source $ZSH/oh-my-zsh.sh

# set right prompt
setopt PROMPT_SUBST
export PROMPT='%~ %# '
export RPROMPT='[$(cat /tmp/bat_status)] [ $(cat /tmp/wlan_status)]'

# default editor
export EDITOR=nvim
alias vim='nvim'
