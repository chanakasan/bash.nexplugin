http() {
  local v="$1"
  if [ -z "$v" ]; then
    echo "http_mod: missing arg <subcommand>"
    return
  fi
  http_$v "${@:2}"
}

http_get() {
  local v="$1"
  curl -H "Accept: application/json" "$v" |
  python -m json.tool |
  view -
}

http_post() {
  local v1="$1"
  local v2="$2"
  curl -X POST -H "Content-Type: application/json" "$v1" -d "$v2" |
  python -m json.tool |
  view -
}

