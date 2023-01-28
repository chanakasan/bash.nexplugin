#!/usr/bin/env bash

set -e

get_suffix() {
  echo $(date +%Y%m%d_%H%M_%S)
}

do_run() {
  local suffix=$(get_suffix)
  local bashrc=$HOME/.bashrc
  local bashrc2=$HOME/.bashrc2

  mv $bashrc $HOME/old_bashrc_$suffix
  if [ -f "$bashrc2" ]; then
    mv $bashrc2 $bashrc
  fi
  rm $installed_file
  undo_symlink
}

undo_symlink() {
  rm $HOME/.gitconfig
  rm $HOME/.gitignore_global
  rm $HOME/.tmux.conf
  rm $HOME/.vimrc 
  rm -r $HOME/.vim
}

start_debug() {
  HOME=/home/chk/sandbox
}

check_installed() {
  if [ ! -f "$installed_file" ]; then
    echo "Error: Not installed"
    echo "Aborted"
    exit 255
  fi
}

main() {
  start_debug
  local installed_file=$HOME/.chk_dotfiles_installed

  echo "Dofiles - Uninstall"
  check_installed
  do_run
  echo "done"
}

main
