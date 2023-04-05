#!/bin/bash

read -p "Enter a number: " num
sum=0

while [ $num -ne 0 ]
do
	d=`echo "$num % 10" | bc`
	sum=`echo "$sum + $d" | bc`
	num=`expr $num / 10`
done
echo "$sum"
