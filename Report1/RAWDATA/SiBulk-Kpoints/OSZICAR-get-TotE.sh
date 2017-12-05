#!/bin/bash  
rm -rf totE.csv
find -name OSZICAR  | while read line; do
energy=$(tail -n1 $line | awk '{print $5}')
xvalue=$(tail -n1 ${line%/*}/x.txt | awk '{print $1}')
echo $xvalue';' $energy >> totE.csv
done

