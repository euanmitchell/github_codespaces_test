#!/usr/bin/env bash

################ 
# Basic Function Structure in Bash

#  function_name () {
#       command  
#  }

################

# Define the function
mimic () {
    echo "First Parameter: $1"
    echo "Second Parameter: $2"
}

# Call the function with two parameters
mimic 1 2

# A slightly more complex function
add () {
    num1=$1
    num2=$2
    result=$((num1 + num2))
    echo $result
}

add 99 100

# To capture the output of this function
output=$(add 16 16)
echo $output

add $output $output