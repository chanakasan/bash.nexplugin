#vim:ft=sh:

show() {
  local v="$1"
  if [ -z "$v" ]; then
    echo "mod_show: missing args <subcommand>" 
  else
    show_$v "${@:2}"
  fi
}

show_win() {
  windows
}

show_sess() {
  sessions
}

