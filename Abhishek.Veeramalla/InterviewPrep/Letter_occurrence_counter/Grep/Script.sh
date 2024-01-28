#!/bin/bash

# Define the word
word="Mississippi"

# Count the occurrences of the letter "S" using grep
count=$(echo "$word" | grep -o 'S' | wc -l)

# Print the result
echo "The number of 'S' in 'Mississippi' is: $count"
