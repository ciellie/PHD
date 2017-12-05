#!/bin/bash
nou=$(date +"%T")
numlines=$(wc -l <POSCAR)
numlines=$(($numlines + 1))
mv POSCAR 'POSCAR'$nou
head -$numlines CONTCAR > POSCAR

