#!/bin/bash
num1=4
num2=9

sum=$(( num1 + num2 ))
echo "My sum is: $sum"
sub=$(( num1 - num2 ))
echo "my sub is: $sub"
mul=$(( num1 * num2 ))
echo "mul is: $mul"
div=$(( num2 / num1 ))
echo "my dive is: $div"
modulo=$(( num2 % num1 ))
echo "my mod is: $modulo"

new_num=$(( num1 + 1 ))
echo "new_num is: $new_num"

((num1--))

echo "num1 is: $num1"
