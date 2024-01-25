#!/bin/bash

# Check if a directory path is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

directory_path=$1

# Check if the provided path is a valid directory
if [ ! -d "$directory_path" ]; then
    echo "Error: $directory_path is not a valid directory."
    exit 1
fi

# Print file statistics for each file in the directory
for file in "$directory_path"/*; do
    if [ -f "$file" ]; then
        echo "File: $file"
        echo "Inode number: $(ls -i "$file" | cut -d' ' -f1)"
        echo "User owner: $(ls -l "$file" | awk '{print $3}')"
        echo "Total number of lines: $(wc -l < "$file")"
        echo "Size of the file: $(ls -l --block-size=1 "$file" | awk '{print $5}') bytes"
        echo "---------------------------"
    fi
done
