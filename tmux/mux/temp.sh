#!/usr/bin/env bash

. ~/dotfiles/lib/lib-tmux.sh

main() {
  local wd=$HOME/temp/any
  cd $wd
  tmux-new "temp"
}

main
