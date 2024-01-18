#!/usr/bin/env bash

set -e

main() {
  local bashrc=$HOME/.bashrc
  local start_text='__nex_bash_start'
  local end_text='__nex_bash_end'
  echo " Uninstalling - Nex Bash"
  remove_from_bashrc
  echo ""
  echo " done"
  echo ""
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

# _end_
main