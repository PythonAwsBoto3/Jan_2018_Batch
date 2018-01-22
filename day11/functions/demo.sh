#!/bin/bash


my_fun(){

  echo "i am a fun"
  echo "The first value is; $1"
  echo "The second value is: $2"
  y=$(($1+$2))
  echo "y value is : $y"
  return "hi how "

}



echo "hi i am calling a funtion"
z=my_fun 2 4
echo "The first value is: $1"
echo "The second value is: $2"
echo "The x value is : $z"
