#!/bin/bash

read -p "enter start or stop option" option


<< mycomment
if [ $option == "start" ]
then
 echo "starting"
elif [ $option == "stop" ]
then 
  echo "stoping"
else
  echo "your entered wrong option"

mycomment


case $option in
 	"start") echo "starting" 
		;;
	"stop") echo "stoping"
		;;
	*) echo "wrong option selected" ;;
esac
