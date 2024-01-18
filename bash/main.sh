#[[ $- == *i* ]] && stty -ixon

# init
source $nex_bash_path/bash/init.sh

# main src
for f in $nex_bash_path/bash/*.bash; do
  source $f
done

# user mods
for f in $HOME/umods/*.bash; do
  source $f
done

echo "Bash loaded."
