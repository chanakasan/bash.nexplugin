#!/usr/bin/env bash

set -e

start_debug() {
  HOME=/c/Bash/test1
}

check_installed() {
  if [ ! -f "$installed_file" ]; then
    echo "Error: Not installed"
    echo "Aborted"
    exit 255
  fi
}

remove_from_bashrc() {
  sed -i '/#__dotfiles_start/,/#__dotfiles_end/{d}' $bashrc
}

do_steps() {
  check_installed
  remove_from_bashrc
  rm $installed_file
}

main() {
  start_debug
  echo "Dofiles - Uninstall"
  local bashrc=$HOME/.bashrc
  local installed_file=$HOME/.chk_dotfiles_installed
  do_steps
  echo "Done"
}

main
