#!/bin/bash

# script_example.sh - Script to find if an element is present in a sequence

# Aim of the script:
# This script uses a for loop to iterate over a sequence of numbers and
# checks if a specific element (in this case, 6) is present. It prints
# each number during the iteration and stops when the element is found.

# Define the element to be searched
x=6

# For loop to iterate over the sequence of numbers
for i in 1 2 3 4 5 6 7 8 9; do
    # Check if the current number is equal to the element to be searched
    if [[ $x -eq $i ]]; then
        echo "$x is found !!"
        # Break the loop if the element is found
        break
    fi
    # Print the current number during the iteration
    echo "The number is $i"
done

## Break --> Terminate the loop
