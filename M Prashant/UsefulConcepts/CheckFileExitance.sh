#!/bin/bash

# script_check_file_existence.sh - Script to check if a file exists

# For directory:
# if [ -d folder_name ]   # If folder exists
# [ ! -d folder_name ]    # If folder does not exist

# For file:
# if [ -f file_name ]     # If file exists
# if [ ! -f file_name ]    # If file does not exist

# Specify the file path
file=/MyScripts/01_function_demo.sh

# Check if the file exists
if [[ -f $file ]]; then
    echo "File exists: $file"
else
    echo "File not found: $file"
fi
