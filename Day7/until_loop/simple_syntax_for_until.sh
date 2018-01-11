#!/bin/bash
echo "The following is the output for while"
i=0
while [ $i -le 5 ]
do
  echo "i value is: $i"
  ((i++))
done

echo "The following in the output for until"

i=0
until [ $i -ge 5 ]
do
  echo "i value is : $i"
  ((i++))
done
