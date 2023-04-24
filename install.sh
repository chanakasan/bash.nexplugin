#!/usr/bin/env bash

set -e

copy_to_bashrc() {
  echo "" >> $bashrc
  echo '#__dotfiles_start' >> $bashrc
  echo 'export chk_dotfiles_path=$HOME/dotfiles' >> $bashrc
  echo 'export chk_bash_dist_path=$chk_dotfiles_path/chk-bash/dist' >> $bashrc
  echo 'source $chk_bash_dist_path/main' >> $bashrc
  echo 'export PATH=$chk_dotfiles_path/chk-bin:$PATH' >> $bashrc
  echo '#__dotfiles_end' >> $bashrc
  echo "" >> $bashrc
}

start_debug() {
  HOME=/c/Bash/test1
}

check_installed() {
  if [ -f "$installed_file" ]; then
    echo "Error: Already installed"
    echo "Aborted"
    exit 255
  fi
}

do_steps() {
  check_installed
  copy_to_bashrc
  touch $installed_file
  source $bashrc
}

main() {
  start_debug
  echo "Dotfiles - Installation"
  local root=$HOME
  local bashrc="$root/.bashrc"
  local installed_file=$root/.chk_dotfiles_installed
  do_steps
  echo ""
  echo "Done"
}

main
