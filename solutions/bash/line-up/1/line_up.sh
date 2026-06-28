#!/usr/bin/env bash
name="$1"
num=$2
suffix="$3"
if (( $num%100>=11 && $num%100<=13 )); then 
    suffix="th"
else 
    last_dig="$((num%10))"
    case $last_dig in
        1) suffix="st";;
        2) suffix="nd";;
        3) suffix="rd";;
        *) suffix="th";;
    esac    
fi

echo "${name}, you are the ${num}${suffix} customer we serve today. Thank you!"

    