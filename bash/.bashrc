# codeandkey/dotfiles
# bashrc

# system-wide config
[ -r "/etc/bashrc" ] && source /etc/bashrc
[ -r "/etc/profile" ] && source /etc/profile

# aliases
alias ls='ls --color=auto'
alias vim=nvim

# user-local paths
export PATH=~/.local/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib

# pretty gpg prompts
export GPG_TTY=$(tty)

# default editor
export EDITOR=nvim

# ssh terminal type, alacritty is less supported
alias ssh='TERM=xterm-256color ssh'

# vi mode and dynamic prompt
set -o vi

EMBEDDED_PS1='\1\e[0;36m\2\w\1\e[0m\2 $ '
reset_readline_prompt_mode_strings () {
    bind "set vi-ins-mode-string \"${EMBEDDED_PS1@P}\1\e[32m\2ins >\1\e[92m\2>\1\e[0m\e[5 q\2>\""
    bind "set vi-cmd-mode-string \"${EMBEDDED_PS1@P}\1\e[33m\2cmd >\1\e[93m\2>\1\e[0m\e[2 q\2>\""
}
PROMPT_COMMAND=reset_readline_prompt_mode_strings
PS1=' '
PS2=' ... '
