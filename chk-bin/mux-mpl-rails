#!/usr/bin/env bash

debug_switch=on

debug() {
  if [[ "$debug_switch" != "on" ]]; then
    return
  fi
  local k=$1
  local v=$2
  if [[ -n $v ]]; then
    echo "[DEBUG] $k = $v"
  else
    echo "[DEBUG] $k"
  fi
}

main() {
  local wd=$HOME/dev/mypostlabels-rails
  local s=mypost-rails
  cd $wd
  
  local x=$(tmux-session-exists $s)
  if [[ "$x" = "true" ]]; then
    exit 0
  fi

  tmux new-session -d -s $s -n "main"
  tmux send-keys -t $s:1 "vi ." C-m
  #---------------------------------------------------------------------------
  tmux new-window -t $s:2 -n "server"
  tmux send-keys -t $s:2 "mpl-serve" C-m
  tmux split-window -t $s:2 -h
  tmux send-keys -t $s:2 "tail -f log/development.log" C-m
  #---------------------------------------------------------------------------
  tmux new-window -t $s:3 -n "console"
  tmux send-keys -t $s:3 "rails c" C-m
  #---------------------------------------------------------------------------
  tmux select-window -t $s:1
}

main
