_nx_source_main_files() {
  for f in $nex_bash_path/bash/*.bash; do
    source $f
  done
}

_nx_source_umods() {
  export nex_user_mods_path="$HOME/umods"
  mkdir -p $nex_user_mods_path
  touch $nex_user_mods_path/empty.bash

  for f in $HOME/umods/*.bash; do
    source $f
  done
}