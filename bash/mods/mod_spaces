function get_substr
{
  local input="$1"
  local start="$2"
  local end="$3"
  # echo [$input] [$start] [$end]
  local result=$(sed "s/.*$start\(.*\)$end.*/\1/" <<< "$input")
  echo $result
}

function get_space
{
  local wd=$PWD
  local from='\/home\/chk\/spaces\/'
  local to='\/'
  local result=$(get_substr "$wd" "$from" "$to")
  echo $result
}

function get_subject
{
  local space="$1"
  local wd=$PWD
  local from="\/home\/chk\/spaces\/$space"
  local to='\/'
  local result=$(get_substr "$wd" "$from" "$to")
  echo $result
}

function nex_spaces_base
{
  local base='\/home\/chk\/spaces\/'
  echo $base
}

function nex_prompt_cmd
{
  local base=$(nex_spaces_base)
  local space=$(get_space)
  # local subject=$(get_subject "$space")
  local wd="${PWD/$base/}"
  # echo $space
  # echo $wd

  if [[ "$ORIG_PS1" == "" ]]; then
    export ORIG_PS1=$PS1
  fi

  if [[ $PWD == *"/spaces/$space"* ]]; then
    export PS1="\[\033[01;32m\]$space -- ($subject)\[\033[00m\]: \[\033[01;34m\]$wd\[\033[00m\]\n\$ "
  else
    export PS1=$ORIG_PS1
  fi
}

#export PROMPT_COMMAND=nex_prompt_cmd

# Snippets
# export PS1='\[\033[01;32m\][_topics_:$wd]\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
# \[\033[01;32m\] _green_ \[\033[00m\]
# \[\033[01;34m\] _blue__ \[\033[00m\]
