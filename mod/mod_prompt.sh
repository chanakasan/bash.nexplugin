set_prompt() {
  local a1="$1"
  local ps_prefix_1="############################## "
  local prompt_1_color='${ps_prefix_1}${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n${ps_prefix_1}\$ '
  local prompt_1_gray='${ps_prefix_1}${debian_chroot:+($debian_chroot)}\u@\h:\w\n${ps_prefix_1}\$ '
  local prompt_orig_color='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
  local prompt_orig_gray='${debian_chroot:+($debian_chroot)}\u@\h:\w\n\$ '
  if [ "$a1" == "2" ]; then
    export PS1=$prompt_1_color
  fi
  if [ "$a1" == "1" ]; then
    export PS1=$prompt_orig_color
  fi
}

