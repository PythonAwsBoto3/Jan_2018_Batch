#!/bin/bash

version=`httpdxx -V 2>/dev/null`
if [ -n "$version" ]
then
  echo "version is: $version"
else
  echo "version command is not there"
fi
