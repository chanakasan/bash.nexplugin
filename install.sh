#!/usr/bin/env bash

set -e

repo_base_url() {
  #echo "https://github.com/chanakasan"
  echo "git@github.com:chanakasan"
}

install_vim() {
  cd $HOME/dotfiles
  local base_url=$(repo_base_url)
  local dir=chk-vim
  if [ ! -d $dir ]; then
    git clone $base_url/$dir
  fi
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
  ln -nfs $HOME/dotfiles/chk-config/_gitignore_global $HOME/.gitignore_global
}

symlink_tmux() {
  ln -nfs $HOME/dotfiles/chk-mux/index.conf $HOME/.tmux.conf
}

install_tmux() {
  symlink_tmux
  echo "Tmux installed"
}

install_git() {
  symlink_git
  echo "Git installed"
}

get_suffix() {
  echo $(date +%Y%m%d_%H%M_%S)
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo 'source $HOME/.bashrc2' >> $bashrc
  echo 'export chk_dotfiles_path=$HOME/dotfiles' >> $bashrc
  echo 'export chk_bash_dist_path=$chk_dotfiles_path/chk-bash/dist' >> $bashrc
  echo 'source $chk_bash_dist_path/main' >> $bashrc
  echo 'export PATH=$chk_dotfiles_path/chk-bin:$PATH' >> $bashrc
  echo "" >> $bashrc
}

do_main() {
  cd $wd
  local suffix=$(get_suffix)

  if [ -f "$bashrc2" ]; then
    mv $bashrc2 $HOME/old_bashrc2_$suffix
  fi
  mv $bashrc $bashrc2
  touch $installed_file
  touch $bashrc
  copy_to_bashrc

  install_git
  install_tmux
  install_vim
}

start_debug() {
  HOME=/home/chk/sandbox
}

check_installed() {
  if [ -f "$installed_file" ]; then
    echo "Error: Already installed"
    echo "Aborted"
    exit 255
  fi
}

main() {
  local wd=$HOME
  local bashrc="$HOME/.bashrc"
  local bashrc2=$HOME/.bashrc2
  local installed_file=$HOME/.chk_dotfiles_installed

  echo "Dotfiles - Installation"
  check_installed
  do_main
  echo ""
  echo "Done."
}

main
