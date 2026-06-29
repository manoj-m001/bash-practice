#!/usr/bin/env bash
if [[ $2 -lt 0 ]]; then
    echo "span must not be negative"
    exit 1
fi
ans=0
num="$1"
k="$2"
lenn=$#num
if [[ "$num" =~ [^0-9] ]]; then
    echo "digits input must only contain digits"
    exit 1
fi

if [[ ${#num} -lt $k ]]; then
    echo "span must not exceed string length"
    exit 1
fi
for ((i = 0; i <= ${#num} - k; i++)); do
    sub="${num:i:k}"
    
    prod=1
    for ((j = 0; j < k; j++)); do
        digit="${sub:j:1}"
        prod=$((prod * digit))
    done
    
    if (( prod > ans )); then
        ans=$prod
    fi
done

echo "$ans"
