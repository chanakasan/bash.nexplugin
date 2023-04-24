undo_symlink() {
  rm $HOME/.gitconfig
  rm $HOME/.gitignore_global
  rm $HOME/.tmux.conf
  rm $HOME/.vimrc 
  rm -r $HOME/.vim
}