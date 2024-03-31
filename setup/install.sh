#!/usr/bin/env bash

set -e

main() {
  local dir_name=bash.nexplugin
  local start_text='__nex_bash_start'
  local end_text='__nex_bash_end'
  local bashrc="$HOME/.bashrc"
  local nex_bash_path=$(get_root_path)/$dir_name
  uninstall_if $1
  start
  remove_from_bashrc
  copy_to_bashrc
  finish
}

start() {
  # validate_var_is_defined "start_text" $start_text
  # validate_var_is_defined "end_text" $end_text
  # validate_var_is_defined "bashrc" $bashrc
  echo " Installing - Nex Bash"
}

finish() {
  echo " done"
  echo " Please run below command"
  echo "source ~/.bashrc"
  echo
}

uninstall_if() {
  if [ "_rm" == "$1" ]; then
    echo " Uninstalling - Nex Bash"
    remove_from_bashrc
    echo " done"
    echo
    exit 0
  fi
}

get_root_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare
  else
    echo $HOME/dotfiles
  fi
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_bash_path='$nex_bash_path >> $bashrc
  echo 'source $nex_bash_path/src/bash/main.sh' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

main $1
