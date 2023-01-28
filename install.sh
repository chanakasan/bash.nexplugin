#!/usr/bin/env bash

set -e

repo_base_url() {
  #echo "https://github.com/chanakasan"
  echo "git@github.com:chanakasan"
}

install_vim() {
  cd $HOME/dotfiles
  local base_url=$(repo_base_url)
  git clone $base_url/chk-vim.git
  cd $HOME
  symlink_vim
  echo "Vim installed"
}

symlink_vim() {
  ln -nfs $HOME/dotfiles/chk-vim/_vimrc $HOME/.vimrc
  ln -nfs $HOME/dotfiles/chk-vim/_vim $HOME/.vim
}

symlink_git() {
  ln -nfs $HOME/dotfiles/chk-config/_gitconfig $HOME/.gitconfig
  ln -nfs /home/chk/dotfiles/chk-config/_gitignore_global $HOME/.gitignore_global
}

symlink_tmux() {
  ln -nfs $HOME/dotfiles/chk-mux/index.conf $HOME/.tmux.conf
}

install_tmux() {
  cd $HOME
  local bashrc="$HOME/.bashrc"
  ln -nfs $HOME/dotfiles/chk-mux/index.conf $HOME/.tmux.conf
  echo 'export PATH=$chk_dotfiles_path/chk-bin:$PATH' >> $bashrc
  symlink_tmux
  echo "Tmux installed"
}

install_git() {
  symlink_git
  echo "Git installed"
}

main() {
  local wd=$HOME
  local bashrc="$HOME/.bashrc"

  cd $wd
  echo "Dotfiles - Installation"

  #-- copy
  echo "" >> $bashrc
  echo 'export chk_dotfiles_path=$HOME/dotfiles' >> $bashrc
  echo 'export chk_bash_dist_path=$chk_dotfiles_path/chk-bash/dist' >> $bashrc
  echo 'source $chk_bash_dist_path/main' >> $bashrc
  echo "" >> $bashrc
  #--

  install_git
  install_tmux
  install_vim

  echo "Done."
}

main
