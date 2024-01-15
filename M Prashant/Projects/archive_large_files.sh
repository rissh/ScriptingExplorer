#!/bin/bash
# script_archive_large_files.sh - Script to archive files larger than 20MB

# Variables
BASE=/home/rishi/
DAYS=10
DEPTH=1
RUN=0

# Check if the base directory is created or not
if [[ ! -d $BASE ]]; then
    echo "Directory does not exist: $BASE"
    exit 1
fi

# Check if 'archive' directory is present or not
if [[ ! -d $BASE/archive ]]; then
    echo "Directory does not exist: $BASE/archive"
    exit 1
fi

# Find the list of files larger than 20MB
for file in $(find $BASE -maxdepth $DEPTH -type f -size +20MB); do
    if [[ $RUN -eq 0 ]]; then
        echo "[$(date "+%y-%m-%d %H:%M:%S")] Archiving $file ==> $BASE/archive"
        gzip $file || exit 1
        mv $file.gz $BASE/archive || exit 1
    fi
done
