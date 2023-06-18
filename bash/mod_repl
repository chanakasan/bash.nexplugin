repl() {
  local v="$1"
  local dir=$HOME/repl/$v
  if [ -z "$v" ]; then
    echo "mod_repl: missing args <name>" 
    return
  fi
  if [ ! -d "$dir" ]; then
    echo "mod_repl: repl not found '$v'" 
    return
  fi
  code $dir
}


