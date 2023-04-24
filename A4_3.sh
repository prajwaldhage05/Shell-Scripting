#!/bin/bash
pos=0
neg=0
zero=0

for i in {1..10}
do
read -p "Enter number $i:  " num
if [ $num -gt 0 ]
then 
	pos=`echo "1 + $pos" | bc`
elif [ $num -lt 0 ]
then 
	neg=`echo "1 + $neg" | bc`
else
	zero=`echo "1 + $zero" | bc`
fi
done

echo "Positive- $pos"
echo "Negative- $neg"
echo "Zeros- $zero"

