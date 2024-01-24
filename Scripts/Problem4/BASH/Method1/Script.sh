#!/bin/bash

# Check if a number is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Use the provided number
number=$1

# Check if the number is positive
if [ "$number" -gt 0 ]; then
    echo "$number is a positive number."
elif [ "$number" -eq 0 ]; then
    echo "$number is zero."
else
    echo "$number is not a positive number."
fi
