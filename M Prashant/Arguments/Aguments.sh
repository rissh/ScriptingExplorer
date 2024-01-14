#!/bin/bash

# Access the arguments
echo "first argument is $1"     # Print the first command-line argument
echo "second argument is $2"    # Print the second command-line argument

# All arguments
echo "All arguments are $@"     # Print all command-line arguments

# Number of arguments
echo "Total number of arguments are $#"  # Print the total number of command-line arguments

# For loop to access the arguments
for x in "$@"  # Iterate over all command-line arguments
do
        echo "Arguments are $x"    # Print each command-line argument in the loop
done
