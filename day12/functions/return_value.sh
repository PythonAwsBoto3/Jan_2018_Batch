#!/bin/bash

my_fun(){
 echo "This is a my_fun"
 echo "This is second line from fun"
 return 56
}



echo "This is main code"

x=`my_fun`
echo "The returned value is: $?"
echo "x value is: $x"
echo "returned value: $?"
