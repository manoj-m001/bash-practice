#!/usr/bin/env bash

num="$1"
k="$2"
len=${#num}

if [[ -z $num ]]; then
    echo "series cannot be empty"
fi
if [[ $k -gt $len ]]; then
    echo "slice length cannot be greater than series length"
    exit 1
elif [[ $k -lt 0 ]]; then 
    echo "slice length cannot be negative"
    exit 1
elif [[ $k -eq 0 ]]; then 
    echo "slice length cannot be zero"
    exit 1
fi

for ((i=0;i<=len-k;i++));do
    sub="${num:i:k}"
    if (( i == len-k )); then
        printf "%s" "$sub"
    else
        printf "%s " "$sub"
    fi
done
echo 

