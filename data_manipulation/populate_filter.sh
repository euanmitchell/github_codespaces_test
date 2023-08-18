#!/usr/bin/env bash

# Randomly generates a string in lines
echo "How many lines do you want?"
read LINES

declare -a array=("apple" "pear" "cherry" "strawberry" "orange")

COUNT=1

while [ $COUNT -le $LINES ]
do
    rand=$[ $RANDOM % 5 ]                                   # Generates a random integer between 0 and 4
    echo "$COUNT ${array[$rand]}" >> filter_file.txt        # Indexes array with the randomly generated integer    
    ((COUNT++))
done


# Filtering Techniques

# grep apple filter_file.txt                    Returns all occurrences of apple
# grep -c apple filter_file.txt                 Returns a count of how many times apple occurs
# grep apple filter_file.txt | wc -l            Alternative means of counting

# grep -e apple -e cherry filter_file.txt       Returns all occurrences of either apple or cherry
# grep -c -e apple -e cherry filter_file.txt    Returns a count of all occurrences of either apple or cherry

# grep -v apple filter_file.txt                 Returns all lines that DO NOT contain apple
# grep -c -v apple filter_file.txt              Returns a count of how many lines DO NOT contain apple

# Searching for a string with spaces requires wrapping in quotes
# For example to see if line 882 contains apple: grep '882 apple' filter_file.txt