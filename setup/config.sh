# customize
tmp_name=bash

# temp
script_dir=$(dirname $0)
tpl_text=$(cat $script_dir/bashrc.tpl)
root_path=$HOME/dotfiles

# required
this_plugin_name=$tmp_name.nexplugin
this_plugin_path=$root_path/$this_plugin_name
this_start_text='__nex_'$tmp_name'_start'
this_end_text='__nex_'$tmp_name'_end'
this_middle_text="${tpl_text//__s1__/$this_plugin_path}"
bashrc="$HOME/.bashrc"
