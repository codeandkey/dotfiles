# codeandkey/dotfiles
# bashrc

# don't run on non-interactive shells
[[ $- != *i* ]] && return

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

bind -m vi-command 'Control-l: clear-screen'
bind -m vi-command '"\C-a": beginning-of-line'
bind -m vi-command '"\C-e": end-of-line'
bind -m vi-insert 'Control-l: clear-screen'
bind -m vi-insert '"\C-a": beginning-of-line'
bind -m vi-insert '"\C-e": end-of-line'

bind "set show-mode-in-prompt on"
bind "set keyseq-timeout 0.05"

PS1=" \[\e[0;36m\]\W\[\e[0m\] "
bind "set vi-ins-mode-string \1\e[38;5;39m\e[5 q\2>>\1\e[0m\2 "
bind "set vi-cmd-mode-string \1\e[38;5;208m\e[2 q\2::\1\e[0m\2 "
