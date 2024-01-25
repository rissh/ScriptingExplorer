#!/bin/bash

# Prompt the user to enter a file path
read -p "Enter the file path: " file_path

# Check if the provided path is a valid file
if [ ! -f "$file_path" ]; then
    echo "Error: $file_path is not a valid file."
    exit 1
fi

# Print file statistics for the specified file
echo "File: $file_path"
echo "Inode number: $(stat -c '%i' "$file_path")"
echo "User owner: $(stat -c '%U' "$file_path")"
echo "Total number of lines: $(wc -l < "$file_path")"
echo "Size of the file: $(stat -c '%s' "$file_path") bytes"
echo "---------------------------"
