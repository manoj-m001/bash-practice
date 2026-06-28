#!/usr/bin/env bash

op=$1
num=$2
square_of_sum(){
local n=$1
sum=$((n*(n+1)/2))
echo $((sum*sum))
}

sum_of_sqr(){
local n=$1
val=0
for((i=1;i<=n;i++));do
    val=$(( val+i*i ))
done
echo $val
}

case $op in
    "square_of_sum")
        square_of_sum "$num"
        ;;
    "sum_of_squares")
        sum_of_sqr "$num"
        ;;
    "difference")
        s_o_s=$(square_of_sum "$num")
        sum_sq=$(sum_of_sqr "$num")
        echo $((s_o_s-sum_sq))
        ;;
esac
