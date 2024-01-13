#!/bin/bash

# Function with Single Argument

## Function Declaration
function welcome {
        echo "-----------"
        echo "Welcome $1"
        echo "-----------"
}

## Function Call
welcome Rishikesh
welcome Nikhil

# Function with multiple Arguments
## Function Declaration
function welcome1 {
        echo "-----------"
        echo "Hello $1"
        echo "I am $2 years old"
        echo "-----------"
}

## Function Call
welcome1 Rishikesh 23
welcome1 Nikhil 22
