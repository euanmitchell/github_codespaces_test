#!/usr/bin/env bash

ls -l fake-file.txt &> /dev/null && echo "worked the first time"

ls -l fake-file.txt &> /dev/null 
echo "worked the second time (not really)"