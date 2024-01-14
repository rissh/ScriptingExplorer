#!/bin/bash

# To create a user, provide username and description
echo "Creating the user"
echo "Username is $1"
echo "Description is $2"

# Here if you provide multiple arguments, then by default, it will take only the first two arguments.

# Type 1 -> Use "" to separate while passing multiple arguments.
# Type 2 -> Use Shift in the script itself.

# Creating user using shifting in arguments
echo "Creating user using shifting in arguments"
echo "First argument is $1"
shift  # Shift removes the first argument, so now $2 becomes $1, $3 becomes $2, and so on.
echo "Remaining all arguments are $@"
