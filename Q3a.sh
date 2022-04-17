#!/bin/bash

filepath=$1

size=$(wc --bytes < $filepath)

echo "The size of the file $1 is $size Bytes"