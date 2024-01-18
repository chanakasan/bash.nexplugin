#!/usr/bin/env bash

set -e

main() {
  local start_text='__nex_bash_start'
  local end_text='__nex_bash_end'
  local bashrc="$HOME/.bashrc"
  local nex_bash_path=$(get_root_path)/nex-bash
  echo " Installing - Nex Bash"
  remove_from_bashrc
  copy_to_bashrc
  echo ""
  echo " done"
  echo " Please run below command"
  echo " source ~/.bashrc"
  echo ""
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
  echo 'source $nex_bash_path/bash/main.sh' >> $bashrc
  echo 'export PATH=$nex_bash_path/bin:$PATH' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main
