#!/bin/bash

read -p "Enter Basic Salary- " b
dp=`echo "$b * 0.5"| bc`
t=`echo "$b + $dp" | bc`
da=`echo " 0.35 * $t " | bc`
hra=`echo " 0.08 * $t " | bc`
ma=`echo " 0.03 * $t " | bc`
pf=`echo " 0.1 * $t " | bc`

salary=`echo " $b + $dp + $da + $hra + $ma - $pf " | bc`
echo "$salary"



