repl() {
  local base=$HOME/repl
  local type="$1"
  local verb="$2"
  local type_dir=$base/$type
  local tpl=$base/.tpl/$type

  if [ -z "$type" ]; then
    cd $base
  fi
  if [ ! -d "$type_dir" ]; then
    echo "not_found: $type_dir"
    return
  fi
  if [ -z "$verb" ]; then
    echo "Listing for $type"
    echo
    ls -lah $base/$type
  fi
  if [ "$verb" == "new" ]; then
    nx_repl_new
  fi
}

nx_repl_new() {
  local name=$(haiku)
  local dir=$type_dir/$name
  cp -r $tpl $dir
  cd $dir
  vscode $dir
  mux new
}
