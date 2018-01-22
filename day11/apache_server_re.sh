#!/bin/bash

location_of_httpd=`find / -iname "httpd"`

echo "The location_of_httpd is: $location_of_httpd"

status_of_httpd=`ps -ef | grep "httpd" | wc -l`

if [ ${status_of_httpd} -ge 6 ]
then
  echo "The httpd server is running"
else
  echo "The httpd server is not running"
fi

echo "Finding the apache home path"
path1=`dirname ${location_of_httpd}`
apache_home=`dirname $path1`

echo "The apache_home is: $apache_home"

echo "Finding httpd.conf file location........"
httpd_conf_file_location="${apache_home}/conf/httpd.conf"
echo "The location of httpd.conf file is: ${httpd_conf_file_location}"
