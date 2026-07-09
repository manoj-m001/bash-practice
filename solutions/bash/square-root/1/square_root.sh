#!/usr/bin/env bash

num=$1
while (( i * i < num )); do
    ((i++))
done

echo "$i"