nx_source_lib() {
  local root=$HOME/spaces/lib/bash-nex-lib/src
  local file="$1"
  local path1=$root/$file
  source $path1
}

nx_source_file() {
  local file="$1"
  source $file
}