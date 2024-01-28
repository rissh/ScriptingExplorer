#!/bin/bash

# Function to count occurrences of a character in a string
count_char() {
    local str="$1"
    local char="$2"
    local count=$(grep -o -c "$char" <<< "$str")
    echo "$count"
}

# Define the word
word="Mississippi"

# Call the function to count occurrences of the letter "S" in the word
count=$(count_char "$word" 'S')

# Print the result
echo "The number of 'S' in 'Mississippi' is: $count"
