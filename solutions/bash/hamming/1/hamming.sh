#!/usr/bin/env bash

str1="$1"
str2="$2"
len1=${#str1}
len2=${#str2}
if [[ $# -ne 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

if [[ len1  -ne len2 ]]; then
    echo "strands must be of equal length"
    exit 1

fi


cnt=0
for((i=0; i<len1; i++)); do
    ch1=${str1:i:1}
    ch2=${str2:i:1}
    if [[ "$ch1" != "$ch2" ]]; then
        ((cnt++))
    fi
done

echo "$cnt"

