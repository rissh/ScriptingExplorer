#!/bin/bash

# script_check_connectivity.sh - Script to check the connectivity of a specified site

# Prompt user for the site to check
read -p "Which site do you want to check? " site

# Command to check connectivity
ping -c 1 $site

# Check the exit status of the ping command
if [[ $? -eq 0 ]]; then
    echo "Successfully connected to $site"
else
    echo "Unable to connect to $site"
fi

## $? -> Gives the status of the last command

