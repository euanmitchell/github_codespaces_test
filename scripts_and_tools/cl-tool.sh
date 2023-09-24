#!/usr/bin/env bash

# A simple tool to take a phrase and echo it some specified number of times, e.g.
# ./cl-tool.sh --count 5 --phrase "hello world"

# 1. Define the function
phrase_generator() {
    for ((i=0; i<$1; i++)); do
        echo "$2"
    done
}

# 2. Parse the CLI input
while [[ $# -gt 1 ]]            # While there are one or more parameters
do
key="$1"

case $key in
    -c | --count)               # Capture the first input value
    COUNT="$2"
    shift
    ;;
    -p | --phrase)              # Capture the second input value
    PHRASE="$2"
    shift
    ;;
esac
shift
done

# 3. Pass parsed input to the function
phrase_generator "${COUNT}" "${PHRASE}"