#!/usr/bin/env bash

set -e

main() {
  echo " creating symlinks"
  add_symlinks
  echo " done"
  echo
}

add_symlinks() {
  local base=$(nex _plugin "bash")
  local src=$base/src/_config
  local dest=$HOME
  ln -nfs $src/_ackrc $dest/.ackrc
  ln -nfs $src/_agignore $dest/.agignore
  ln -nfs $src/_eslintrc.json $dest/.eslintrc.json
  ln -nfs $src/_gemrc $dest/.gemrc
  ln -nfs $src/_npmrc $dest/.npmrc
  ln -nfs $src/_yarnrc $dest/.yanrc
  ln -nfs $src/_railsrc $dest/.railsrc
  ln -nfs $src/_irbrc $dest/.irbrc
}

main
