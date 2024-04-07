#!/bin/bash

set -e

source $(dirname "$0")/config.sh
source $nex_support_path/src/plugin/install/helpers.sh

main() {
  start
  validate
  remove_from_bashrc
  copy_to_bashrc
  finish
}

main
