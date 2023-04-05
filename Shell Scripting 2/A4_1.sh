#!/bin/bash
echo "Username is " $USER
echo "pwd" $PWD
terminal=` tty `
echo  "$terminal"
total=` ls -l | wc -l `
echo "$total"

