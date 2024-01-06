#!/usr/bin/env bash

set -e

add_symlinks() {
  local wd=$nex_bash_path/config
  local root=$HOME
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

main() {
  echo "Nex Bash - Symlinks"
  echo ""
  add_symlinks
  echo "done"
  echo ""
}

main
