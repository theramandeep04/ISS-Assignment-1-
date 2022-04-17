#!/bin/bash

str="$1"
len=${#str}
for((i=$len-1;i>=0;i--))
do
     reverse="$reverse${str:$i:1}"
done
final=$reverse

letter2='z'

for letter in {y..a}
do
final=${final//[$letter]/$letter2}
letter2=$(tr 1-9a-zA-Z 0-9a-zA-Y <<<"$letter2")
done
echo $final