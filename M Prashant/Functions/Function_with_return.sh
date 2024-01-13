#!/bin/bash

# Type -> 1
## Function will output nothing return does not return the actual value
function addTwoNum() {
        sum=$(($1+$2))
        return $sum
}

addTwoNum 5 15

#Type -> 2
# In case you want to return the actual value
function addTwoNum() {
        return $(($1+$2))
}

addTwoNum 5 15
echo "The sum of two numbers is $?"
