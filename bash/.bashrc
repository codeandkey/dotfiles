# codeandkey-dotfiles
# bashrc

# aliases
alias ls='ls --color=auto'
alias vim=nvim

export PATH=$PATH:~/.local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib

# pretty gpg prompts
export GPG_TTY=$(tty)

# defauilt editor
export EDITOR=nvim

# bash prompt
export PROMPT_COMMAND='PS1="$(~/.util/bash_prompt.sh) "'
