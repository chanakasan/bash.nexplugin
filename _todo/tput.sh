__prompt_to_bottom_line() {
  tput cup $LINES
#tput cup $(( LINES / 2 ))
}
alias clear='clear && __prompt_to_bottom_line'
__prompt_to_bottom_line
