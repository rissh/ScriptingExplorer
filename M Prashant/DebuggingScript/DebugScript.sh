#!/bin/bash

# script_with_set_options.sh - Script demonstrating the use of set options

# set -e : Exit the script when a command fails
set -e

# set -x : Enable xtrace mode
set -x

# Display the current date
date

# This command is intentionally misspelled to trigger an error
# The script will exit due to set -e
png

# Display the hostname
hostname
