install_vim() {
  cd $root/dotfiles
  local base_url=$(repo_base_url)
  local dir=chk-vim
  if [ ! -d $dir ]; then
    git clone $base_url/$dir
  fi
  cd $root
  symlink_vim
  echo "Vim installed"
}

repo_base_url() {
  echo "https://github.com/chanakasan"
}
