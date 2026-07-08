#!/usr/bin/env bash

num=$1
cnt=0
while (($num> 0)); do
    cnt=$((cnt+num%2))
    num=$((num/2))
done 
echo "$cnt"