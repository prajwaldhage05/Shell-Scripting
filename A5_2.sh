#!/bin/bash

read -p " Enter Item Code : " item_code
read -p " Enter Qty_sold (>0) : " qty_sold
read -p " Enter Rate (100-10000): " rate

if [ $qty_sold -gt 0 ] && [ $rate -lt 100 ] && [ $rate -gt 10000 ]
then
        echo " Error"
fi

rec=`echo "$item_code  $qty_sold  $rate" | tee -a item.txt`
echo "$rec"