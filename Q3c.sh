#!/bin/bash

filepath=$1

number_of_words=$(wc --word < $filepath)

echo "Number of words in $filepath is $number_of_words"