#This is for arrays
#!/bin/bash
y=(2 5 89 "raju")
for ((i=0;i<4;i++))
do
   echo "The value is: ${y[$i]}"
done
