#[[ $- == *i* ]] && stty -ixon

tmp_source_folder() {
  for f in "$1"/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}

tmp_base=$(nex _plugin "bash")
tmp_source_folder $tmp_base/src/functions
tmp_source_folder $tmp_base/src/env
tmp_source_folder $tmp_base/src/alias
tmp_source_folder $tmp_base/src/ext

echo "Bash loaded"
