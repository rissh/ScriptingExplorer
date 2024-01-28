
#!/bin/bash

# Prompt the user to enter the limit
echo "Enter the limit:"
read limit

# Check if the input is a valid positive integer
if ! [[ "$limit" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive integer."
    exit 1
fi

# Display a message indicating the purpose of the script
echo "Numbers divisible by 3 and 5 but not by 15 up to $limit:"

# Iterate through numbers from 1 to the specified limit
for (( i=1; i<=$limit; i++ )); do
    # Check if the current number is divisible by 3, 5, and not by 15
    if [ $(( $i % 3 )) -eq 0 ] && [ $(( $i % 5 )) -eq 0 ] && [ $(( $i % 15 )) -ne 0 ]; then
        # Print the number if it meets the divisibility criteria
        echo $i
    fi
done
