#!/bin/bash
dir=${PWD##*/}
pbs1="#PBS -o /mnt/lustre/users/cvanvuuren/"$dir"/oppv-4000k_output"
pbs2="#PBS -e /mnt/lustre/users/cvanvuuren/"$dir"/oppv-4000k_error"
workdir="pushd /mnt/lustre/users/cvanvuuren/"$dir
eval "sed -i 's+#PBS -o.*+"$pbs1"+g' oppv-4000k.pbs"
eval "sed -i 's+#PBS -e.*+"$pbs2"+g' oppv-4000k.pbs"
eval "sed -i 's+pushd.*+"$workdir"+g' oppv-4000k.pbs"
