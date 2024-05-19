# vim:ft=sh:
stty -ixon

PROMPT_COMMAND='if [[ "$bashrc" != "$PWD" && "$PWD" != "$HOME" && -e .bashrc ]]; then bashrc="$PWD"; . .bashrc; fi'
#bind '"\ej":"foobar\C-m"'

foobar() {
  echo "hello!"
}

ide() {
  local v="$1"
  ide_$v
}

ide_react() {
  code ~/ide/react-ide/_app
}

