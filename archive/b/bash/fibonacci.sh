#!/bin/bash

count=$1

[[ $count =~ ^[0-9]+$ ]] || { echo "Error, you must supply a number"; exit 1; }

n=1
n_minus_1=1
echo "1: 1"
for i in $(seq 2 $count); do
    echo "$i: $n"
    tmp=$n
    n=$[$n+$n_minus_1]
    n_minus_1=$tmp
done
