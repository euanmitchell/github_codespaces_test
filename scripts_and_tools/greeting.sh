#!/usr/bin/env bash

# 1. Define the function
greeting_generator() {
    for ((i=0; i<$1; i++)); do
        echo "$2" "$3"
    done
}

# 2. Parse the CL input
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -c | --count)
    COUNT="$2"
    shift
    ;;
    -p | --greeting)
    GREETING="$2"
    shift
    ;;
    -p | --greetee)
    GREETEE="$2"
    shift
    ;;
esac
shift
done

# 3. Pass parsed input to the function
greeting_generator "${COUNT}" "${GREETING}" "${GREETEE}"