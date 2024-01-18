#[[ $- == *i* ]] && stty -ixon

# init
source $nex_bash_path/bash/init.sh

for f in $nex_bash_path/bash/*.bash; do
  source $f
done

echo "Bash loaded."
