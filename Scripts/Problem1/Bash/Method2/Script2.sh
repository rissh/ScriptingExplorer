#!/bin/bash

# Check if the user provided a directory path
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

# Count the number of files and folders
file_count=$(ls -l "$directory_path" | grep "^-" | wc -l)
folder_count=$(ls -l "$directory_path" | grep "^d" | wc -l)

# Print the results
echo "Total number of files in $directory_path: $file_count"
echo "Total number of folders in $directory_path: $folder_count"
