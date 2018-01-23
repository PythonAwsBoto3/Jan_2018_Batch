#!/bin/bash

my_fun1(){
  echo "hi this is first fun"
  my_fun2
  return  10 
}


my_fun2(){
  echo "hi this is second fun"
}


echo "This is main code"
my_fun1


echo "The returned value is: $?"

