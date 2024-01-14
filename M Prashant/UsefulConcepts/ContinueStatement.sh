#!/bin/bash

# script_example.sh - Script to print only ODD numbers

# Aim of the script:
# This script uses a for loop to iterate over a sequence of numbers
# and prints only the ODD numbers. It uses the 'continue' statement
# to skip even numbers during the iteration.

# For loop to iterate over the sequence of numbers
for i in 1 2 3 4 5 6 7 8 9 10; do
    # Calculate the remainder when dividing by 2 to determine if it's an ODD number
    let r=$i%2
    
    # Check if the remainder is equal to 0 (indicating an EVEN number)
    if [[ $r -eq 0 ]]; then
        # Skip the current iteration and move to the next number if it's EVEN
        continue
    fi
    
    # Print ODD number during the iteration
    echo "ODD number in the list is $i"
done

## Continue --> Only terminate the current iteration and move to the next iteration
