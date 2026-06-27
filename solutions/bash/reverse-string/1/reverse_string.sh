#!/usr/bin/env bash

word="$1"
res=""
len="${#word}"

for((i=len;i>=0;i--));do
res+="${word:$i:1}";
done;

echo "$res"
