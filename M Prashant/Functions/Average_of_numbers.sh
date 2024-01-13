#!/bin/bash

avg(){
    len=$#
    sum=0
    for x in "$@"
    do
        sum=$((sum + x))
    done
    avg1=$((sum / len))
    echo $avg1
}

avg 30 40 50 60
