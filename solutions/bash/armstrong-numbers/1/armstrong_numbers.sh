#!/usr/bin/env bash
num=$1
num2=$num
lenn=${#num}
res=0
while (($num>0))
do
    dig=$((num%10))
    temp=$((dig**lenn))
    res=$((res+temp))
    num=$((num/10))
done
if (( res==num2 )); then 
echo "true"
else
echo "false"
fi
