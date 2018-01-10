#!/bin/bash
read -p "Enter any interger " x
echo "Given number is: $x"

while [ $x -gt 1 ] 
do
 rem=$(($x%10))
 echo "The number is: $rem"
 x=$(($x/10))
done

