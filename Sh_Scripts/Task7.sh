#!/bin/bash

read -p "Enter a number: " number

if [[ $number -gt 0 ]]; then
  echo "Number $number is positive."
else
  echo "Number $number is negative."
fi
