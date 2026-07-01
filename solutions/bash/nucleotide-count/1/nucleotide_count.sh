#!/usr/bin/env bash
dna="$1"
a_cnt=0
c_cnt=0
g_cnt=0
t_cnt=0


for((i=0; i<${#dna}; i++)); do
    ch="${dna:$i:1}"
    if [[ "$ch" == "A" ]];then
        ((a_cnt++))
    elif [[ "$ch" == "C" ]];then
        ((c_cnt++))
    elif [[ "$ch" == "G" ]];then
        ((g_cnt++))
    elif [[ "$ch" == "T" ]];then
        ((t_cnt+=1))
    else
        echo "Invalid nucleotide in strand"
        exit 1
    fi
done

printf "A: %d\nC: %d\nG: %d\nT: %d\n" "$a_cnt" "$c_cnt" "$g_cnt" "$t_cnt"