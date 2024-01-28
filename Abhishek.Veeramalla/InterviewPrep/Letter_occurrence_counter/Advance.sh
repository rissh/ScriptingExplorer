#!/bin/bash

# Prompt the user to enter the word
echo "Enter a word:"
read word

# Prompt the user to enter the letter
echo "Enter a letter:"
read letter

# Count the occurrences of the letter in the word using grep
count=$(echo "$word" | grep -o "$letter" | wc -l)

# Print the result
echo "The number of '$letter' in '$word' is: $count"
