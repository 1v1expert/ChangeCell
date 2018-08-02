#!/bin/bash
file="EditCell.sh"
for (( i=200; i <= 210; i++ ))
do
expect -f $file $i
#echo "number is $i"
done
