#!/bin/bash
read -p "Enter first number" num1
read -p "Enter second number" num2
read -p "Enter third number" num3
echo "The average is"
 avg=` expr $((num1 + num2 + num3)) / 3 `
echo "$avg"

