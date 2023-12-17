#!/usr/bin/env bash

. ~/dotfiles/lib/lib-tmux.sh

main() {
  local wd=$HOME/spaces/work/embed/pages-next
  local s=pages-next
  cd $wd
  
  tmux-new $s -d
  tmux_send_keys -t $s:1 "code ." C-m
  tmux_select_window -t $s:1
  tmux_attach -t $s:1 
}

main
