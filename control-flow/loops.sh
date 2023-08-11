#!/usr/bin/env bash

declare -a fruits=("apple" "pear" "cherry" "melon")

for fruit in "${fruits[@]}"
do
    echo "This ${fruit} is delicious!"
done