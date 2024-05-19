#[[ $- == *i* ]] && stty -ixon

tmp_source_folder() {
  if [ ! -d "$1" ]; then
    echo " not dir: $1"
    return
  fi  
  for f in "$1"/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}

export user_bash_root=$HOME/user/bash
tmp_source_folder $user_bash_root/functions
tmp_source_folder $user_bash_root/env
tmp_source_folder $user_bash_root/alias

echo "Bash loaded"

