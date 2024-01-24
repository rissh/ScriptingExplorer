#!/bin/bash

# Check if a directory path is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Use the provided directory path
directory_path=$1

# Check if the directory exists
if test -d "$directory_path"; then
    echo "Directory '$directory_path' exists."
else
    echo "Directory '$directory_path' does not exist."
fi
