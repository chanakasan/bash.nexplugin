#[[ $- == *i* ]] && stty -ixon

for f in $nex_bash_path/src/bash/*.sh; do
  source $f
done

echo "Bash loaded."
