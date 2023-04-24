#!/bin/bash

echo "a. Adding record"
echo "b. finding record"
echo "c. Deleting record"
echo "d. default : to exit"
read -p "enter choice :  " ch

case $ch in
        "a")


                read -p " Name of file : " name

                read -p " Enter Roll no. " roll

                read -p " Enter full name " cname
                read -p " Enter Semester " sem
                read -p " Enter Marks of 3 subject:s1 s2 s3 " s1 s2 s3
                add=`echo "$roll $cname $sem $s1 $s2 $s3" | tee -a $name.txt`

                echo "$add"
        ;;
        "b")
                read -p "Enter Filename to Search : " search
                get=`find . $search.txt`
                echo "$get"
        ;;
        "c")
                read -p "Enter record Name to delete : " del
                rdel=`rm -r $del.txt`
                echo "$rdel"
                echo " $del  deleted"
        ;;
        *)
                exit=`clear`
                echo $exit
        ;;
esac