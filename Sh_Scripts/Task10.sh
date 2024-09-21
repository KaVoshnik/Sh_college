#!/bin/bash

read -p "Enter first string: " str1
read -p "Enter second string: " str2

if [[ $str1 == $str2 ]]; then
  echo "Strings $str1 and $str2 equal."
else
  echo "Strings $str1 and $str2 dont equal."
fi