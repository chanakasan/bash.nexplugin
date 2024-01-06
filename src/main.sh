#[[ $- == *i* ]] && stty -ixon

# init
source $nex_bash_path/src/init.sh

for f in $nex_bash_path/src/*.bash; do
  source $f
done

echo "Bash loaded."
