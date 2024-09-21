#!/bin/bash

read -p "Введите имя файла: " filename

if [ -r "$filename" ]; then
  echo "File $filename is readable."
else
  echo "File $filename is not readable."
fi
