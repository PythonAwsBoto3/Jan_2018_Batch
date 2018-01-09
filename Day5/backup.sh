#!/bin/bash
no_of_lines=`ps -ef | grep httpd | wc -l`
#echo "The no_of_line = $no_of_lines"

if [ $no_of_lines -ge 6 ]
then
   echo "Apache server is running"
   echo "Going to stop apache server"
   /usr/local/webserver/bin/httpd -k stop 
   if [ $? -eq 0 ]
   then 
	echo ""
   else
	exit 1
   fi
else
   echo "Apache server is not running"
fi

source_location="/usr/local/webserver/logs"
destination_location="/opt/backup"

if [ -d "$destination_location" ]
then
   echo "already backup folder is there"
else
   echo -e "backup folder is not there\nGoing to create it "
   mkdir $destination_location
   if [ $? -eq 0 ]
   then 
	echo "Successfully created you backup folder "
   else
        exit 2
   fi
fi

copy_folder=`date +%Y_%m_%d`
if [ -d ${destination_location}/${copy_folder} ]
then
   echo ""
else
 mkdir ${destination_location}/${copy_folder}
 if [ $? -eq 0 ]
 then
  echo ""
 else
   exit 3
 fi
fi
cp -rpP ${source_location}/*  ${destination_location}/${copy_folder}

if [ $? -eq 0 ]
then
  echo "successfully copied"
else
  exit 4
fi
echo "Now going to delete old log file"

rm -rf  ${source_location}/*

if [ $? -eq 0 ]
then
 echo "successfully deleted old log files"
else
 exit 5
fi

echo "Going to start server ........."

/usr/local/webserver/bin/httpd -k start

sleep 10

no_of_lines=`ps -ef | grep httpd | wc -l`
echo "no of lines are: $no_of_lines"
if [ $no_of_lines -ge 6 ]
then
   echo "succefully started apache server"
else
   echo "unable to start apache server"
   echo "start it manually"
fi
