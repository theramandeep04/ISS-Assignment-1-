#!/bin/bash

awk '!a[$0]++' quotes.txt