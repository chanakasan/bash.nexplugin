#!/usr/bin/env bash

main() {
  local wd=$HOME/script
  cd $wd
  tmux-new "script"
}

main

