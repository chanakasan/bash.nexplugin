#[[ $- == *i* ]] && stty -ixon

export nex_bash_path=$HOME/dotfiles/bash.nexplugin

tmp_source_folder() {
  for f in "$1"/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}

tmp_source_folder $nex_bash_path/src/functions
tmp_source_folder $nex_bash_path/src/env
tmp_source_folder $nex_bash_path/src/alias
tmp_source_folder $nex_bash_path/src/ext

echo "Bash loaded."
