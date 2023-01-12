#!/usr/bin/env bash

set -e

main() {
  local wd="$chk_dotfiles_path/chk-config"
  ln -s $wd
  ln -s $wd/_ackrc $HOME/.ackrc
  ln -s $wd/_agignore $HOME/.agignore
  ln -s $wd/_eslintrc.json $HOME/.eslintrc
  ln -s $wd/_gemrc $HOME/.gemrc
  ln -s $wd/_gitconfig $HOME/.gitconfig
  ln -s $wd/_gitignore_global $HOME/.gitignore_global
  ln -s $wd/_npmrc $HOME/.npmrc
  ln -s $wd/_yarnrc $HOME/.yanrc
}
