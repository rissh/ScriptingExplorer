#!/bin/bash

# script_path_operations.sh - Script demonstrating file path operations

# 1 -> basename - strip directory info and only give filename
read -p "Enter the full path to the file: " file1
basename $file1

echo "-----------"

# 2 -> dirname - strip the filename and gives directory path
read -p "Enter the full path to the file: " file2
dirname $file2

echo "-----------"

# 3 -> realpath - gives you the full path for a file
read -p "Give the full path to the file: " file3
realpath $file3

echo "-----------"
