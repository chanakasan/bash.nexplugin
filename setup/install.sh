#!/usr/bin/env bash

set -e

get_base_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare
  else
    echo $HOME
  fi
}

remove_from_bashrc() {
  sed -i '/#__nex_bash_start/,/#__nex_bash_end/{d}' $bashrc
}

copy_to_bashrc() {
  local base_path=$(get_base_path)
  echo "" >> $bashrc
  echo '#__nex_bash_start' >> $bashrc
  echo 'export nex_bash_path='$base_path/nex-bash >> $bashrc
  echo 'source $nex_bash_path/src/main' >> $bashrc
  echo 'export PATH=$nex_bash_path/bin:$PATH' >> $bashrc
  echo '#__nex_bash_end' >> $bashrc
  echo "" >> $bashrc
}

main() {
  local bashrc="$HOME/.bashrc"
  echo "Nex Bash Install"
  remove_from_bashrc
  copy_to_bashrc
  echo "Done"
  echo "Please run 'reload'"
  echo ""
}

main
