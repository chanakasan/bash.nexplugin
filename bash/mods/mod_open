open() {
  local v="$1"
  if [ -z "$v" ]; then
    echo "mod_open: missing subcommand <jk|lang|repl>" 
  else
    open_$v "${@:2}"
  fi
}

open_lang() {
  local v="$1"
  local dir=$HOME/lang/$v
  if [ -z "$v" ]; then
    echo "mod_open: open_lang: missing args <name>" 
    return
  fi
  if [ ! -d "$dir" ]; then
    echo "mod_lang: lang not found '$v'" 
    return
  fi
  code $dir
}

open_code() {
  local v="$1"
  if [ -z "$v" ]; then
    echo "mod_open: open_code: missing args <dir path>" 
    return
  fi
  if [ ! -d "$v" ]; then
    echo "mod_open: dir not found '$v'" 
    return
  fi
  code $v
}
