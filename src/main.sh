#[[ $- == *i* ]] && stty -ixon

for f in $nex_bash_path/src/functions/*.sh; do
  source $f
done

for f in $nex_bash_path/src/env/*.sh; do
  source $f
done

for f in $nex_bash_path/src/alias/*.sh; do
  source $f
done

echo "Bash loaded."
