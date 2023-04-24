#!/usr/bin/env bash

set -e

symlink_git() {
  ln -nfs $root/dotfiles/chk-config/_gitconfig $root/.gitconfig
  ln -nfs $root/dotfiles/chk-config/_gitignore_global $root/.gitignore_global
  echo "Git installed"
}

symlink_tmux() {
  ln -nfs $root/dotfiles/chk-mux/index.conf $root/.tmux.conf
  echo "Tmux installed"
}

main() {
  echo "Symlinks - Installation"
  local root=$HOME
  symlink_git
  symlink_tmux
  echo "done."
}

main