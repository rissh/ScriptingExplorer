#!/bin/bash

# Function to check if a directory exists
check_directory() {
    local directory_path=$1

    # Check if the directory exists
    if [ -d "$directory_path" ]; then
        echo "Directory '$directory_path' exists."
    else
        echo "Directory '$directory_path' does not exist."
    fi
}

# Prompt the user to enter the directory path
read -p "Enter the directory path: " user_input

# Check if the specified directory exists
check_directory "$user_input"
