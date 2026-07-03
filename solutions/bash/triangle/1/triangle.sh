#!/usr/bin/env bash

type="$1"
a="$2"
b="$3"
c="$4"

# Check if it is a valid triangle
valid=$(awk -v a="$a" -v b="$b" -v c="$c" '
BEGIN {
    if (a > 0 && b > 0 && c > 0 &&
        a + b >= c &&
        a + c >= b &&
        b + c >= a)
        print 1;
    else
        print 0;
}')

if [[ $valid -eq 0 ]]; then
    echo "false"
    exit 0
fi

case "$type" in
    equilateral)
        [[ "$a" == "$b" && "$b" == "$c" ]] && echo "true" || echo "false"
        ;;
    isosceles)
        [[ "$a" == "$b" || "$b" == "$c" || "$a" == "$c" ]] && echo "true" || echo "false"
        ;;
    scalene)
        [[ "$a" != "$b" && "$b" != "$c" && "$a" != "$c" ]] && echo "true" || echo "false"
        ;;
esac