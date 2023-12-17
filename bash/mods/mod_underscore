_() {
  local v1="${1:-_nil_}"
  _uc_$v1 "${@:2}"
}

_uc_man() {
  tmux popup -E -w 95% -h 100% man $@
}

_uc_kill() {
  tmux confirm-before kill-session
}

