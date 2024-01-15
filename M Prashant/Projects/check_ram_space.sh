#!/bin/bash

# script_check_ram_space.sh - Script to check available RAM space

# Assign the free RAM space to the variable
FREE_SPACE=$(free -mt | grep Total | awk '{print $4}')

# Threshold value for free RAM space
TH=500

# Check if free RAM space is less than the threshold
if [[ $FREE_SPACE -lt $TH ]]; then
    echo "WARNING, RAM is running low !!!"
else
    echo "RAM space is sufficient - $FREE_SPACE MB"
fi
