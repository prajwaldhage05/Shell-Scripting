#!/bin/bash
read n1 sign n2
m=`echo " $n1 $sign $n2 " | bc`
echo "$m"
