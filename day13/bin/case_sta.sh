#!/bin/bash


read -p "Enter any number between 1-3" num

case $num in
	1) echo "this is one" ;;
 	2) echo "This is two" ;;
	3) echo "This is theree" ;;
	*) echo "your entered wrong selection"


esac

