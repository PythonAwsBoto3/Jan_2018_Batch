#!/bin/bash

if [  ! -f nari ]
then
 echo "nari is a file"
fi




if [ 4 -gt 2  -o    5 -gt 100 ]
then
  echo "true or fales = true"
fi


if [ 4 -gt 2 -a 5 -gt 100 ]
then
  echo "true and false = false"
fi
