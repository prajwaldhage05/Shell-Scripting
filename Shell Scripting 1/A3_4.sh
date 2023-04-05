#!/bin/bash

echo "Enter any two numbers:  "
read num1 
read num2
echo "Addition:"
expr $num1 + $num2
echo "Substraction:"
expr $num1 - $num2
echo "Multiplication:"
expr $num1 \* $num2
echo "Division: "
expr $num1 / $num2
echo "Modulo:"
expr $num1 % $num2

