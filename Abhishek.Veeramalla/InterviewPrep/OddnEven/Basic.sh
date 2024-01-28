#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Check if the input is a valid integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid integer."
    exit 1
fi

# Check if the number is even or odd
if [ $(( $number % 2 )) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
