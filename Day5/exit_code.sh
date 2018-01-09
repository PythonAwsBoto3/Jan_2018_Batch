#This script is to know about exit codes
#!/bin/bash
echo "Hi welocme to shell"

ls
if [ $? -eq 0 ]
then
   echo "success"
else
   exit 1
fi
necho "hi how are you"

if [ $? -eq 0 ]
then
   echo "success"
else
   exit 2
fi
