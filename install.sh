#!/usr/bin/env bash

set -e

main() {
  echo "Chk Dotfiles - Installation"
  echo "" >> .bashrc
  echo 'export chk_dotfiles_path=$HOME/dotfiles' >> $HOME/.bashrc
  echo 'export chk_bash_dist_path=$chk_dotfiles_path/chk-bash/dist' >> $HOME/.bashrc
  echo "Done"
}

main
