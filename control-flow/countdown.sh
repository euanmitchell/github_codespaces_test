#!/usr/bin/env bash

echo "How long do you want the countdown to last?"
read N

echo " "
echo "Counting down from $N"
echo " "
echo "Launch in ..."

COUNT=$N
while [ $COUNT -gt 0 ]
do
    echo "$COUNT "
    ((COUNT--))
done
echo "BLAST OFF!"