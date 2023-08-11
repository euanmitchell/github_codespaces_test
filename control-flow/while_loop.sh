#!/usr/bin/env bash

echo "How many loops do you want?"
read N

COUNT=1
while [ $COUNT -le $N ]
do
    echo "Loop #$COUNT "
    ((COUNT++))
done