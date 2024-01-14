#!/bin/bash

# script_ping_and_redirect.sh - Script to ping www.google.com and redirect the output to a file

# Two types of redirection:
# > : Overwrites the existing content of the file or creates a new file
# >> : Appends to the existing file or creates a new file if it doesn't exist

# Send one ICMP echo request to www.google.com and redirect the output to redirect.log
ping -c 1 www.google.com > redirect.log
