#!/bin/bash

# script_check_root_user.sh - Script to check whether the user is root or not

# Checking whether the user is root or not
if [[ $UID -eq 0 ]]; then
    echo "User is root"
else
    echo "User is not root"
fi
