#This is for commands
#!/bin/bash
for each_file in `ls`
do
  echo "The file is: $each_file"
done

echo "The following output is for /tmp path"
for each_file in `ls /tmp`
do
  echo "The file is: $each_file"
done
