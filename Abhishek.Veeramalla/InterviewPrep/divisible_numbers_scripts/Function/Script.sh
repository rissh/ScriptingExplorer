#!/bin/bash

# Function to check if a number is divisible by 3 and 5 but not by 15
is_divisible() {
    # Check if the number is divisible by 3, 5, and not by 15
    if [ $(( $1 % 3 )) -eq 0 ] && [ $(( $1 % 5 )) -eq 0 ] && [ $(( $1 % 15 )) -ne 0 ]; then
        return 0  # Return 0 if the number meets the criteria
    else
        return 1  # Return 1 if the number does not meet the criteria
    fi
}

# Main script

# Check if the number of command-line arguments is correct
if [ $# -ne 1 ]; then
    echo "Usage: $0 <limit>"  # Print usage message if the number of arguments is incorrect
    exit 1  # Exit with an error status
fi

limit=$1  # Store the limit provided as the first command-line argument

echo "Numbers divisible by 3 and 5 but not by 15 up to $limit:"

# Iterate through numbers from 1 to the specified limit
for (( i=1; i<=$limit; i++ )); do
    # Check if the current number meets the criteria using the is_divisible function
    if is_divisible $i; then
        echo $i  # Print the number if it meets the criteria
    fi
done
