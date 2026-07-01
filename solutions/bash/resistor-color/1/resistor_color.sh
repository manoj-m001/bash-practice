#!/usr/bin/env bash
color="$1"
colors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")


if [[ "$1" == "colors" ]]; then
    for color in "${colors[@]}"; do
        echo "$color"
    done
elif [[ "$1" == "code" ]]; then
    for i in "${!colors[@]}"; do
        if [[ "${colors[$i]}" == "$2" ]]; then
            echo "$i"
        fi
    done
fi