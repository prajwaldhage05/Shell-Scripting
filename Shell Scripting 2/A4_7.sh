#!/bin/bash

echo -e "\n1)Create User \n2) Delete User \n3) Create Group \n4) Delete Group \nEnter your choice: "
read ch

case $ch in 
	"1")
		read -p "Enter Username: " user
		sudo useradd -m $user
		echo "Enter Password: " 
		sudo passwd $user
	;;
	"2")
		read -p "Enter Username: " user
		sudo userdel $user
	;;
	"3")
		read -p "Enter Group Name: " group
		sudo groupadd $group
	;;
	"4")	read -p "Enter Group Name: " group
		sudo groupdel $group
	;;
	*)
		echo "Wrong Input"
	;;
esac


