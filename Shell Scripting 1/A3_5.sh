#!/bin/bash
read -p "Enter marks of first subject" s1
read -p "Enter marks of second subject" s2
read -p "Enter marks of third subject" s3
Total=` expr $s1 + $s2 + $s3 `
Percent=` expr $(((Total * 100) / 300)) `
echo "Percentage = $Percent"
if [ $Percent -gt 50 ]
then
echo "First class"
elif [ $Percent -ge 40 ] && [ $Percent -le 50 ]
then
echo "Second class"
else 
echo "Fail"
fi 
