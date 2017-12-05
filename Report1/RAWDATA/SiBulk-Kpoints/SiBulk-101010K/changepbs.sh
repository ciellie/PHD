#!/bin/bash
dir=${PWD##*/}
pbs1="#PBS -o /mnt/lustre/users/cvanvuuren/"$dir"/oppv-output"
pbs2="#PBS -e /mnt/lustre/users/cvanvuuren/"$dir"/oppv-error"
workdir="pushd /mnt/lustre/users/cvanvuuren/"$dir
eval "sed -i 's+#PBS -o.*+"$pbs1"+g' oppv.pbs"
eval "sed -i 's+#PBS -e.*+"$pbs2"+g' oppv.pbs"
eval "sed -i 's+pushd.*+"$workdir"+g' oppv.pbs"
