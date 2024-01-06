#!/usr/bin/env bash

set -e

remove_from_bashrc() {
  sed -i '/#__dotfiles_start/,/#__dotfiles_end/{d}' $bashrc
}

main() {
  echo "Nex Bash - Uninstall"
  local bashrc=$HOME/.bashrc
  check_installed
  remove_from_bashrc
  echo "Done"
  echo ""
}

main