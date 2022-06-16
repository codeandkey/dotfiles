#!/bin/sh
# prints a git branch widget if CWD is a git repository

branch=$(git branch --no-color --show-current 2>/dev/null)

[ -n "$branch" ] && echo -ne " [%{\e[1;34m%}$branch%{\e[0m%}]"
