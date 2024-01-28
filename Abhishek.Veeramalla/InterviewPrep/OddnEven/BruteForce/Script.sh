#!/bin/bash

# Prompt the user to enter the limit
echo "Enter the limit:"
read limit

# Check if the input is a valid positive integer
if ! [[ "$limit" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive integer."
    exit 1
fi

# Display even numbers up to the limit
echo "Even numbers up to $limit:"
for (( i=1; i<=$limit; i++ )); do
    if [ $(( $i % 2 )) -eq 0 ]; then
        echo $i
    fi
done

# Display odd numbers up to the limit
echo "Odd numbers up to $limit:"
for (( i=1; i<=$limit; i++ )); do
    if [ $(( $i % 2 )) -ne 0 ]; then
        echo $i
    fi
done
