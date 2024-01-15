#!/bin/bash

# script_disk_space_alert.sh - Script to monitor free disk space and send an email alert if low

# Monitoring the free filesystem space
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "nvme0n1p2" | awk '{print $5}' | tr -d %)

# Email address to receive alerts
TO="rishikeshjagadaleXX@YYY.com"

# Check if free space is less than 80%
if [[ $FU -ge 80 ]]; then
    echo "Warning, the disk space is low - $FU %" | mail -s "Disk Space Alert !!" $TO
else
    echo "All good"
fi
