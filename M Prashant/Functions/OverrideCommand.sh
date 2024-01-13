#!/bin/bash

# If you create a function with same exact name of command and use it to overrid# e the command itself.
# Useful when adding custom options to command

echo (){
        builtin echo "The name is $1"
        return
}

echo "Little Monster"

# The builtin command in Bash is used to run a shell builtin command from a scri# pt, even if there is a function or alias with the same name.
