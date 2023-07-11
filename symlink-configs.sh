#!/usr/bin/env bash

set -e

do_tmux() {
  local wd=$dotfiles/tmux
  ln -nfs $wd/index.conf $root/.tmux.conf
  echo "Tmux configs installed"
}

do_config_git() {
  local wd=$dotfiles/config
  ln -nfs $wd/_gitconfig $root/.gitconfig
  ln -nfs $wd/_gitignore_global $root/.gitignore_global
  echo "Git configs installed"
}

do_config() {
  local wd=$dotfiles/config
  ln -nfs $wd/_ackrc $root/.ackrc
  ln -nfs $wd/_agignore $root/.agignore
  ln -nfs $wd/_eslintrc.json $root/.eslintrc.json
  ln -nfs $wd/_gemrc $root/.gemrc
  ln -nfs $wd/_npmrc $root/.npmrc
  ln -nfs $wd/_yarnrc $root/.yanrc
  ln -nfs $wd/_railsrc $root/.railsrc
  ln -nfs $wd/_irbrc $root/.irbrc
  echo "Other configs installed"
}

undo_git() {
  rm -i $root/.gitconfig
  rm -i $root/.gitignore_global
}

main() {
  echo "Config files installation"
  echo ""
  local dotfiles=$chk_dotfiles_path
  local root=$HOME
  do_tmux
  do_config_git
  do_config
  echo "done"
  echo ""
}

main
