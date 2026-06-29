#!/usr/bin/env bash
num="$1"
steps=0
if [[ "$num" -le 0 ]]; then
    echo "Error: Only positive integers are allowed"
    exit 1
fi
while((num!=1)) ;
do
    if((num%2==0));then
        num=$((num/2))
    else
        num=$((num*3+1))
    fi
steps=$((steps+1))
done

echo "$steps"