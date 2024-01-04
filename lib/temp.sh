. ~/dotfiles/lib/lib-tmux.sh

main() {
  local v1="$1"
  if [ -z "$v1" ]; then
    cd ~/sandboxes/temp
    tmux-new "temp"
    return
  fi 
  echo hi $v1
}

main $@
