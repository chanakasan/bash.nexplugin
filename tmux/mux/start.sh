#!/usr/bin/env bash

main() {
  local wd=$HOME/sandboxes/start
  cd $wd
  tmux-new "start"
}

main

