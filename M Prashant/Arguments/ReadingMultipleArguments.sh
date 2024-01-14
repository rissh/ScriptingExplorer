#!/bin/bash

# script_example.sh - Script to iterate over command-line arguments

# Aim of the script:
# This script uses a for loop to iterate over the command-line arguments
# and prints each argument on a new line.

# For loop to iterate over command-line arguments
for i in $@; do
    # Print each command-line argument on a new line
    echo -e "$i\n"
done
