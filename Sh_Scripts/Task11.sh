#!/bin/bash

read -p "Enter file name: " filename

if [ -f "$filename" ]; then
  echo "File $filename is exists."
else
  echo "File $filename do not exists."
fi
