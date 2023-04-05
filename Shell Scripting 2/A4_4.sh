#!/bin/bash

min=0
max=0

for i in {1..5}
do
read -p "Enter number $i : " num

if [ $i -eq 1 ]
then
min=$num
max=$num
fi
if [ $num -gt $max ]
then 
max=$num
fi
if [ $num -lt $min ]
then 
min=$num
fi
done
echo "Maximum: $max"
echo "Minimum: $min"
