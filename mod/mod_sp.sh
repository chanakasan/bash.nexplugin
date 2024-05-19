alias sp="space"
space() {
  local path1=$PWD/space
  local path2=$PWD/../../space
  if [ -d $path1 ]; then
    cd $path1
  fi
  if [ -d $path2 ]; then
    cd $path2
  fi
}
