#[[ $- == *i* ]] && stty -ixon

export user_bash_root=$HOME/user/bash
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

tmp_source_folder $tmp_base/src/functions
tmp_source_folder $tmp_base/src/env
tmp_source_folder $tmp_base/src/alias
tmp_source_folder $tmp_base/src/ext

echo "Bash loaded"
