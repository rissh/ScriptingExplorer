#!/bin/bash

# Check if a number is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Use the provided number and check if it's positive
if [ $1 -gt 0 ]; then
    echo "$1 is a positive number."
else
    echo "$1 is not a positive number."
fi
