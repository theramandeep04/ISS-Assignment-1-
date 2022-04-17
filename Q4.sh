#!/bin/bash

IFS=','
read -r -a nos
let n=${#nos[@]}
for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${nos[$i]} -gt ${nos[$j]}  ]; 
then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done

for (( i=0; i < $n; i++ ))
do
echo -n ${nos[$i]}" "
done
echo