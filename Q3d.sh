#!/bin/bash

filepath=$1

awk '$0="Line No: "NR" - Count of Words "NF' $filepath 