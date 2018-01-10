#!/bin/bash
y=(1 5 9 49 "nari" "lokesh" "santhos"  "vishnu")
echo "$y"
echo "${y[@]}"
echo "${y[*]}"
echo "${y[2]}"
echo "${y[4]}"
echo "${#y[@]}"

