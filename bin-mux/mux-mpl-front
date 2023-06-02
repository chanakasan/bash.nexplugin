#!/usr/bin/env bash

main() {
  local wd=$HOME/dev/mypostlabels-frontend
  local s=mypost-front
  cd $wd
  
  tmux new-session -d -s $s -n "main"
  tmux send-keys -t $s:1 "vi ." C-m
  #---------------------------------------------------------------------------
  tmux new-window -t $s:2 -n "server"
  tmux send-keys -t $s:2 "yarn && yarn start" C-m
  #---------------------------------------------------------------------------
  tmux select-window -t $s:1
  tmux attach -t $s:1 
}

main
