#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if [[ $num1 -gt $num2 ]]; then
  echo "Number $num1 bigger than $num2."
elif [[ $num1 -lt $num2 ]]; then
  echo "Number $num2 bigger then $num1."
else
  echo "Numbers $num1 and $num2 equal."
fi