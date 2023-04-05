#!/bin/bash 
read -p "Enter principal amount" P
read -p "Enter no of years" N
read -p "Enter rate of interest" R
echo "The simple interest is"
expr $P \* $N \* $R / 100

