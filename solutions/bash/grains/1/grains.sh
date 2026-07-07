#!/usr/bin/env bash

num="$1"

if [[ "$1" == "total" ]]; then
    echo 18446744073709551615
    exit 0
fi
if [[ "$1" -ge 64 || "$1" -lt 1 ]]; then
    if [[ "$1" -eq 64 ]]; then
        echo 9223372036854775808
        exit 0
    else
        echo "Error: invalid input"
        exit 1
    fi
fi


num=$(($1-1))
ans=$((2**num))
echo "$ans"
