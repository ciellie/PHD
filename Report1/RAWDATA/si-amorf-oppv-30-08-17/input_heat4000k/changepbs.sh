#!/bin/bash
dir=${PWD##*/}
pbs1="#PBS -o /mnt/lustre/users/cvanvuuren/"$dir"/oppv-4000k_output"
pbs2="#PBS -e /mnt/lustre/users/cvanvuuren/"$dir"/oppv-4000k_error"
workdir="pushd /mnt/lustre/users/cvanvuuren/"$dir

##You can use eval to execute a string:
## sed can use any char as division because of / in path names I used +
eval "sed -i 's+#PBS -o.*+"$pbs1"+g' oppv-4000k.pbs"
eval "sed -i 's+#PBS -e.*+"$pbs2"+g' oppv-4000k.pbs"
eval "sed -i 's+pushd.*+"$workdir"+g' oppv-4000k.pbs"
