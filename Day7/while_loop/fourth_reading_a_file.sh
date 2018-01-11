#!/bin/bash

while read line
do
  echo "The line is: $line"
done < "first.sh"

echo "This is next file"

my_file="third.sh"
while read x
do
  echo "The line is: $x"
done < "$my_file"
