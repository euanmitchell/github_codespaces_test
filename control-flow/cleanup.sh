#!/usr/bin/bash

for filename in file{1..10};
do
    rm $filename.txt &> /dev/null || echo "$filename already removed"
done