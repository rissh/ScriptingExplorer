#!/bin/bash

# Define the word
word="Mississippi"

# Count the occurrences of the letter "S" in the word
count=$(echo "$word" | tr -cd 'S' | wc -c)
# Explanation:
# - `echo "$word"`: Prints the word "Mississippi".
# - `tr -cd 'S'`: Removes all characters except 'S' from the input.
# - `wc -c`: Counts the number of characters in the output, which is the count of 'S'.

# Print the result
echo "The number of 'S' in 'Mississippi' is: $count"
# Explanation:
# - Prints the result, which is the count of 'S' in the word "Mississippi".
