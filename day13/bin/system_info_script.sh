#!/bin/bash

display(){
 date
 echo "------------------------------------"
 echo "		  Main Menu"
 echo "------------------------------------"
 echo "1.Operating system Info"
 echo "2.Hostname and dns Info"
 echo "3.Network Info"
 echo "4.Exit"
}


pause(){
read -p "Enter any key continue"  xyz
}
sys_info(){
 echo "The system information is: "
 uname -a
 pause
}


host_info(){
 echo "The hostname and dns info is: "
 echo "The hostname is: `hostname`"
 echo "The domain name is:  `hostname -d`"
 pause
}







read_input(){
 read -p "Enter your choice [1-4] " input
 case $input in
	1) sys_info ;;
	2) host_info ;;
	3) echo "hi" ;;
	4) exit ;;
	*) echo "selected wrong option"
esac
}

while true
do
  clear
  display
  read_input 
done

