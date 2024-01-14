#!/bin/bash

# script_argument_access.sh - Script to demonstrate accessing command-line arguments

# Check if any arguments are provided
if [[ $# -eq 0 ]]; then
    echo "Please provide the arguments"
    exit 1  # Exit the script with status code 1 indicating failure
fi

# Display information about the provided arguments
echo "Total number of arguments: $#"
echo "The first argument is: $1"
echo "The second argument is: $2"
echo "All arguments are: $@"

# Exit -> Stops the script at this point
# exit 1 -> Indicates failure of the command
# exit 0 -> Indicates successful execution

# $? -> Returns the status of the last command
