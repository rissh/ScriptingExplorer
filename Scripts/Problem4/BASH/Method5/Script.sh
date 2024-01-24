#!/bin/bash

# Function to check if a number is positive
check_positive() {
    local number=$1

    if [ "$number" -gt 0 ]; then
        echo "$number is a positive number."
    elif [ "$number" -eq 0 ]; then
        echo "$number is zero."
    else
        echo "$number is not a positive number."
    fi
}

# Prompt the user to enter a number
read -p "Enter a number: " user_input

# Check if the input is a valid number
if [[ "$user_input" =~ ^[0-9]+$ ]]; then
    check_positive "$user_input"
else
    echo "Error: '$user_input' is not a valid number."
fi
