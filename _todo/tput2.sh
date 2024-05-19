prompt_on_top() {
  tput cup 0 0
  tput el
  tput el1
}

pre_cmd() {
  if [ "$BASH_COMMAND" = "$PROMPT_COMMAND" ] || [ -n "$COMP_LINE" ]; then
    return
  fi
  printf "\33[2J"
}

PROMPT_COMMAND="prompt_on_top"
trap 'pre_cmd' DEBUG
