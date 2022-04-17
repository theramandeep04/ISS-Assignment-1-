#!/bin/bash

filepath=$1

number_of_lines=$(wc --lines < $filepath)

echo "Number of Lines in the file $filepath is $number_of_lines"