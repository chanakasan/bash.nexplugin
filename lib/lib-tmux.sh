tmux_new_session() {
  tmux new-session "$@"
}

tmux_send_keys() {
  tmux send-keys "$@"
}

tmux_new_window() {
  tmux new-window "$@"
}

tmux_select_window() {
  tmux select-window "$@"
}

tmux_split_window() {
  tmux split-window "$@"
}

tmux_attach() {
  tmux attach "$@"
}