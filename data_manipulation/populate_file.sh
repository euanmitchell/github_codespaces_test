#!/usr/bin/env bash

echo "How many lines do you want?"
read LINES

COUNT=1
while [ $COUNT -le $LINES ]
do
    echo "$COUNT $RANDOM" >> file.txt           # $RANDOM generates a pseudo-random number between 0 and 32767 by default but can be customised
    ((COUNT++))
done


# Truncation Operations:-

# head file.txt         Returns first 10 rows of file.txt
# head -n 5 file.txt    Returns first 5 rows of file.txt

# tail file.txt         Returns last 10 rows of file.txt
# tail -n 3 file.txt    Returns last 3 rows of file.txt

# shuf file.txt         Returns all rows shuffled
# shuf -n 5 file.txt    Returns 5 rows randomly selected