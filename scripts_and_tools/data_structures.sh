#!/usr/bin/env bash

# Bash arrays (i.e., lists or sequences)

# Create the array (note no commas etc. just spaces!)
declare -a array=("apple" "pear" "cherry")

# Now loop through it
echo "Iterating through an array of items (fruits):"
for i in "${array[@]}"
do
    echo "This ${i} is delicious!"
done

# Bash hashes (dictionaries or associative arrays)

# Create the hash
declare -A mealhash=([dinner]="steak" [lunch]="salad" [breakfast]="fruit")

# Now loop through it
echo "Iterating through a hash of keys (meals) and values (foods):"
for key in "${!mealhash[@]}"
do
    echo "For $key I like to eat ${mealhash[$key]}"
done