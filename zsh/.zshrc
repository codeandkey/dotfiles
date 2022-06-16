# codeandkey-dotfiles
# zshrc

# shell config

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# aliases
alias ls='ls --color=auto'
alias vim='nvim'
alias g=git

# set right prompt
setopt PROMPT_SUBST
export PROMPT='%~$(~/.util/git_branch.sh) %# '

# vars 
export EDITOR=nvim
