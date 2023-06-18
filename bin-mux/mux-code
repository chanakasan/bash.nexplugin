#!/usr/bin/env bash

main() {
  local wd=$HOME/pid
  local s=code-server
  cd $wd
  
  tmux new-session -d -s $s -n "main"
  tmux send-keys -t $s:1 "code-server serve-local" C-m
  tmux select-window -t $s:1
  #tmux attach -t $s:1 
}

main
