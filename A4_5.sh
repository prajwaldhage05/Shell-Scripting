#!/bin/bash
echo "Enter a name"
read name
reverse=`echo "$name" | rev`
echo "$reverse"
if [ $name == $reverse ]
then
echo "Palindrome"
else
echo "Not Palindrome"
fi
