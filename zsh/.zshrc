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
export PROMPT='%~$(~/.util/git_branch.sh) %# '

# default editor
export EDITOR=nvim
