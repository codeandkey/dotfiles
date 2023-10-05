#!/bin/sh
# sets the bash prompt PS1 to include git and ssh information

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

ssh_connection() {
  echo $SSH_CONNECTION | awk '{print $1}'
}

# construct the ps1

# first, the user and host in cyan
PS1="\e[0;36m\u@\h\e[0m"

# second, the ssh connection, if we are connected via ssh, in red
SSH=$(ssh_connection)
if [ -n "$SSH" ]; then
    PS1="$PS1:\e[0;31mssh\e[0m"
fi

# third, the current git branch, if we are in a git repo in green
GIT=$(git_branch)
if [ -n "$GIT" ]; then
  PS1="$PS1 [\e[0;32m$GIT\e[0m]"
fi

# fourth, the current working directory in blue
PS1="$PS1 \e[0;34m\w\e[0m\n\$"

echo
echo $PS1
