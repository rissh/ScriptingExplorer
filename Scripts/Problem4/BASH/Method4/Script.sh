#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the number is positive
if [ "$number" -gt 0 ]; then
    echo "$number is a positive number."
elif [ "$number" -eq 0 ]; then
    echo "$number is zero."
else
    echo "$number is not a positive number."
fi
