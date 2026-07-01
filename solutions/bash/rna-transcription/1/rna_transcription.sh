#!/usr/bin/env bash
rna="$1"
dna=""
lenn=${#rna}
for((i=0;i<lenn;i++));do
    ch="${rna:$i:1}"
    if [[ "$ch" == "G" ]]; then
        dna+="C"
    elif [[ "$ch" == "C" ]]; then
        dna+="G"
    elif [[ "$ch" == "T" ]]; then
        dna+="A"
    elif [[ "$ch" == "A" ]]; then
        dna+="U"
    else
        echo "Invalid nucleotide detected."
        exit 1
    fi
done
echo "$dna"