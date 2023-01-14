#!/usr/bin/env bash

set -e

main() {
  local bashrc="$HOME/.bashrc"
  echo "Chk Dotfiles - Installation"
  echo "" >> .bashrc
  echo 'export chk_dotfiles_path=$HOME/dotfiles' >> $bashrc
  echo 'export chk_bash_dist_path=$chk_dotfiles_path/chk-bash/dist' >> $bashrc
  echo 'source $chk_bash_dist_path/main' >> $bashrc
  echo "Done."
}

main
