#!/usr/bin/env bash

main() {
  local wd=$HOME/sandbox
  local s=sandbox
  cd $wd
  
  tmux new-session -d -s $s -n "main"
  tmux send-keys -t $s:1 "vii README.md" C-m
  #---------------------------------------------------------------------------
  tmux new-window -t $s:2 -n "server"
  tmux send-keys -t $s:2 "rails s -p 5000 -b 0.0.0.0" C-m
  tmux split-window -t $s:2 -h
  tmux send-keys -t $s:2 "tail -f log/development.log" C-m
  #---------------------------------------------------------------------------
  tmux new-window -t $s:3 -n "console"
  tmux send-keys -t $s:3 "rails c" C-m
  #---------------------------------------------------------------------------
  tmux new-window -t $s:4 -n "services"
  tmux send-keys -t $s:4 "redis-server" C-m
  tmux split-window -t $s:4 -v
  tmux send-keys -t $s:4 "mailcatcher -f" C-m
  #---------------------------------------------------------------------------
  tmux select-window -t $s:1
  tmux attach -t $s:1 
}

main
