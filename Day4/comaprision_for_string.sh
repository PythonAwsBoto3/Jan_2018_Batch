#!/bin/bash
name1="Raju"
name2="ramu"
name3="Raju"



if [ "$name1" == "$name3" ]
then
 echo "they are equal"
fi



if [ -n "$name1" ]
then
    echo "name1 is not empty"
fi

name5=""
if [ -z "$name5" ]
then
 echo "we are checking with -n option"
fi
