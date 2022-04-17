#!/bin/bash

str="$1"
len=${#str}
for((i=$len/2-1;i>=0;i--))
do
     reverse="$reverse${str:$i:1}"
done
for((i=$len/2;i<len;i++))
do
     reverse="$reverse${str:$i:1}"
done
echo $reverse