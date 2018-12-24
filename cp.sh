#!/bin/sh

script_list="
modeling_attention.py
run_attention.py
bin/run_attention.sh
"

for script in $script_list
do
    trg_dir=$(dirname $script)
    mkdir -p $trg_dir
    cp ../bert/$script $trg_dir
done
