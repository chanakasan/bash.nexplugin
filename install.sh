#!/usr/bin/env bash

set -e

get_dotfiles_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare/dotfiles
  else
    echo $HOME/dotfiles
  fi
}

copy_to_bashrc() {
  local dpath=$(get_dotfiles_path)
  echo "" >> $bashrc
  echo '#__dotfiles_start' >> $bashrc
  echo 'export chk_dotfiles_path='$dpath >> $bashrc
  echo 'export chk_bash_path=$chk_dotfiles_path/chk-bash' >> $bashrc
  echo 'export chk_bin_path=$chk_dotfiles_path/chk-bin' >> $bashrc
  echo 'export chk_mux_bin_path=$chk_dotfiles_path/mux-bin' >> $bashrc
  echo 'source $chk_bash_path/main' >> $bashrc
  echo ''
  echo 'export PATH=$chk_bin_path:$PATH' >> $bashrc
  echo 'export PATH=$chk_mux_bin_path:$PATH' >> $bashrc
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
  . $bashrc
}

main() {
  # start_debug
  echo "Dotfiles - Installation"
  local root=$HOME
  local bashrc="$root/.bashrc"
  local installed_file=$root/.chk_dotfiles_installed
  do_steps
  echo "Done"
  echo ""
}

main
