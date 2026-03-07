#!/bin/bash
# codeandkey/dotfiles
# cross-platform installer
# 
# Stow/symlinks aren't available on windows, so this script directly copies
# files to the appropriate locations.
#
# It will still back up any existing dotfiles to a local directory.
#
# NOTE: this script is not targeted towards WSL, might need to define 
# IS_WINDOWS=0 to override the win detection.

THISDIR="$(dirname $(readlink -f $0))"
BACKUPDIR="$HOME/.dotfiles_backup"

LOCAL_CONFIG="${HOME}/.config"
ROAMING_CONFIG="$LOCAL_CONFIG"
LOCAL_HOME="$HOME"

if [ "$IS_WINDOWS" = "1" ]; then
  LOCAL_CONFIG="${LOCAL_HOME}/AppData/Local"
  ROAMING_CONFIG="${LOCAL_HOME}/AppData/Roaming"
fi

backup() {
  if [ -e "$1" ]; then
    echo "Backing up $1"
    mkdir -p "$BACKUPDIR/$(dirname $1)"
    cp -r "$1" "$BACKUPDIR/$1"
  fi
}

install_config() {
  source="$1"
  dest="$2"
  backup "$dest"
  rm -rf "$dest"
  echo "Installing ${source} to ${dest}"
  mkdir -p "$(dirname $dest)"
  cp -r "$source" "$dest"
}

install_config "${THISDIR}/bash/.bashrc" "${LOCAL_HOME}/.bashrc"
install_config "${THISDIR}/tmux/.tmux.conf" "${LOCAL_HOME}/.tmux.conf"
install_config "${THISDIR}/nvim" "${LOCAL_CONFIG}/nvim"