#!/bin/bash

read -p "Enter number: " number

if (( $number % 2 == 0 )); then
  echo "Number $number is even."
else
  echo "Number $number is odd."
fi
