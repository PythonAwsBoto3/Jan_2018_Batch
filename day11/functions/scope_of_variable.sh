#!/bin/bash

my_scope(){
  echo "x value is: $x"

}

echo "This is main program"
local x=4
echo "x value is: $x"
my_scope
echo "x value is: $x"
