#!/bin/bash

if [ $# -ne 1 ]
then
  echo "you should run your script as follows"
  echo "usage is: $0 start/stop"
  exit 
fi


if [ $1 == "start" ]
then
 httpd -k $1
elif [ $1 == "stop" ]
then
 httpd -k $1
else
 echo "wrong option selected"
 echo "usage is: $0 start/stop"
fi
