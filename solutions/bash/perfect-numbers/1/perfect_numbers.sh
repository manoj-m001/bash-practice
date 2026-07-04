#!/usr/bin/env bash
num=$1

if (( num < 1 )); then
    echo "Classification is only possible for positive integers."
    exit 1
fi
if (( num == 1 )); then
    echo "deficient"
    exit 0
fi

s=1

for ((i = 2; i*i <= num; i++)); do
    if (( num % i == 0 )); then
        s=$((s + i))
        if (( i * i != num )); then
            s=$((s + num / i))
        fi
    fi
done

if (( num==s )); then
    echo "perfect"
elif (( s>num )); then
    echo "abundant"
else
    echo "deficient"
fi
