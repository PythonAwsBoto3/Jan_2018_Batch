#!/bin/bash

x_array=(23 46 89 4 0 9)
i=0
while [ $i -le 5 ]
do
  echo "value is: ${x_array[$i]}"
  ((i++))
done
