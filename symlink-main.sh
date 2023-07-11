#!/usr/bin/env bash

set -e

do_symlink() {
  ln -nfs $space/play $root/play
  ln -nfs $space/repl $root/repl
}

main() {
  echo "Config files installation"
  echo ""
  local space=$HOME/spaces/main
  local root=$HOME
  do_symlink
  echo "done"
  echo ""
}

main

