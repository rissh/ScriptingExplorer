#!/bin/bash

# Check if a directory path is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Use the provided directory path
directory_path=$1

# Check if the provided path is a valid directory
if [ ! -d "$directory_path" ]; then
    echo "Error: $directory_path is not a valid directory."
    exit 1
fi

# Iterate over files in the directory
for file in "$directory_path"/*; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        echo "File: $file"
        echo "Inode number: $(stat -c '%i' "$file")"
        echo "User owner: $(stat -c '%U' "$file")"
        echo "Total number of lines: $(wc -l < "$file")"
        echo "Size of the file: $(stat -c '%s' "$file") bytes"
        echo "---------------------------"
    fi
done
