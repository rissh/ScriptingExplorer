#!/bin/bash

# script_generate_random_number.sh - Script to generate a random number between 1 and 6

# Generate any random number from 1 to 6
num=$(( $RANDOM % 6 + 1 ))

# Print the generated random number
echo "The generated number is: $num"
