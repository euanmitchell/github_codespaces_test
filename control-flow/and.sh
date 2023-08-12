#!/usr/bin/env bash

touch one.txt\
    && touch two.txt\
    && touch three.txt

# Count the number of files
ls *.txt | wc -l

# Clean up
rm *.txt