#This script is used to check about permissions of file/directory

#!/bin/bash
read -p "Enter file/directory path: " dir_or_file

if [ -e "${dir_or_file}" ]
then
    echo "Given path is exist"
    if [ -f "${dir_or_file}" ]
    then
        echo "Given path is for file"
    fi

    if [ -d "${dir_or_file}" ]
    then 
       echo "Given path is for directory"
    fi

    if [ -r "${dir_or_file}" ]
    then
       echo "Given file/dir is  having read permission"
    else 
       echo "Dont have read permission"
    fi

    if [ -w "${dir_or_file}" ]
    then 
       echo "Given file/dir is having write permission"
    else
       echo "Given file/dir is not having write permission"
    fi

    if [ -x "${dir_or_file}" ]
    then
 	echo "given file/dir is having executable permission"
    else
	echo "Given file/dir is not having executable permission"
    fi



else
    echo "Given path is not exist"
    exit 
fi
