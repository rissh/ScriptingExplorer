#!/bin/bash

# script_example.sh - Script to check if a parameter is passed

# Aim of the script:
# This script checks if a parameter is passed as a command-line argument.
# It demonstrates two different ways to perform the check and prints
# a message based on whether a parameter is provided or not.

# Check if a parameter is passed using -z
if [[ -z $1 ]]; then
    echo "No parameter passed."
else
    # Print a message if a parameter is passed
    echo "Parameter passed = $1"
fi

# Another way to check if a parameter is passed using ! -n
if [[ ! -n $1 ]]; then
    echo "No parameter passed."
else
    # Print a message if a parameter is passed
    echo "Parameter passed = $1"
fi
