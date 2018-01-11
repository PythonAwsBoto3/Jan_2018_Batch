#!/bin/bash
my_x=(1 2 3 4 5 6 7 8 9 10)
echo "This is before starting for loop"
for((i=0;i<10;i++))
do
  #rem=$(({my_x[$i]}%2))
  if [ "$((${my_x[$i]}%2))" -eq 0 ]
  then
	continue
  	echo "The even no is: ${my_x[$i]}"
  fi
  echo "We are out of if conditon"
done
