#!/usr/bin/env bash

num=$1

ans=""

if (( num%3==0 && num%5==0 && num%7==0 )); then
    ans="PlingPlangPlong"
elif (( num%3==0 && num%5==0  || num%3==0 && num%7==0 || num%7==0 && num%5==0 )); then
    if (( num%3==0 && num%5==0 )); then
        ans="PlingPlang"
    elif (( num%5==0 && num%7==0 )); then
        ans="PlangPlong"
    else 
        ans="PlingPlong"
    fi
elif (( num%3==0 || num%5==0|| num%7==0 )); then
    if (( num%3==0 ));then 
        ans="Pling"
    elif (( num%5==0 )); then
        ans="Plang"
    else
        ans="Plong"
    fi
else 
    echo "$num"
fi

echo "$ans"