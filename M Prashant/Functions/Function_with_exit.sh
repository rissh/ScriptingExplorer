#!/bin/bash

## Exit -> Terminate the script with status
# 1 --> Error status
# 2 --> Success status

is_odd(){
  x=$1
  if [ $((x % 2)) != 0 ]; then
     echo "Number is Odd"
  else
     echo "Number is Even"
     exit 1
  fi
}

is_odd 64
