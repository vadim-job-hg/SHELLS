#!/usr/bin/env bash
RANDOM=$$$(date +%s)
array=$(ls -d */)
size=${#array[@]}
index=$(($RANDOM % $size))
gource ${array[$index]}