#!/bin/bash

# script_create_user.sh - Script to create a new user account

# Script should be executed with sudo/root access
if [[ "${UID}" -ne 0 ]]; then
    echo "Please run with sudo or root"
    exit 1
fi

# User should provide at least one argument as a username else guide the user
if [[ "${#}" -lt 1 ]]; then
    echo "Usage: ${0} USER_NAME [COMMENT]..."
    echo "Create a user with the name USER_NAME and comments field of COMMENT"
    exit 1
fi

# Store the first argument as the username
USER_NAME="${1}"
echo "Username: $USER_NAME"

# In case of more than one argument, store it as account comments
shift
COMMENT="${@}"
echo "Comments: $COMMENT"

# Create a password
PASSWORD=$(date +%s%N)
echo "Generated Password: $PASSWORD"

# Create the user
useradd -c "$COMMENT" -m "$USER_NAME"

# Check if the user is successfully created or not
if [[ $? -ne 0 ]]; then
    echo "The account could not be created !!"
    exit 1
fi

# Set the password for the user
echo "$USER_NAME:$PASSWORD" | chpasswd

# Check if the password is successfully set or not
if [[ $? -ne 0 ]]; then
    echo "Password could not be set !!"
    exit 1
fi

# Force password change on first login
passwd -e "$USER_NAME"

# Display the username, password, and the hostname
echo "USERNAME : $USER_NAME"
echo "PASSWORD : $PASSWORD"
echo "HOSTNAME : $(hostname)"
