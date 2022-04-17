#!/bin/bash

cat $1 | tr " " "\n" | tr -cd '[:alnum:]\n'"'" | sort | uniq -cd | awk '{print $2 " - " $1}'