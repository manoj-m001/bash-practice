#!/usr/bin/env bash
num="$1"

is_prime(){
local num=$1
if (( num < 2 )); then
        return 1
fi
for((j=2;j<=num/2;j++));do
    if((num%j==0));then
        return 1
    fi
done
return 0
}
out=""
for((i=0;i<=num;i++));do
    if is_prime "$i" ;then
    out+="$i "
    fi
done

echo ${out% }

