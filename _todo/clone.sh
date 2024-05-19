clone_() {
  local v="$1"
  if [ -z "$v" ]; then
    echo "error: missing arg <repo>"
    return
  fi
  git clone git@github.com:chanakasan/$v.git
}
