#!/bin/bash

read -p " Enter Absolute Path of file1.txt : " ab_path
if [ -r $ab_path ];
then
    echo "$ab_path is Readable"
else
    echo "$ab_path is not Readable"
fi

read -p " Enter filename of file2 (copy_dest file.txt )" file2
if [ -f "$file2" ]
then
        echo "$file2 Exist"
        echo " Choose any one : "
        echo " a. overwrite"
        echo "b. Append "
        read -p "enter choice :" ch
        case $ch in
                "a")
                        read -p "Enter the name of file1.txt " file1
                        ow=`cat $file1 | tee $file2`
                        echo "$ow"
                        echo "Overwrite done from $file1 to $file2"
                ;;
                "b")
                        read -p "Enter the name of file1.txt " file1
                        ap=`cat $file1 | tee -p $file2`
                        echo "$ap"
                        echo "$file1 appended to $file2"
                ;;
                *)
                        cls=`clear`
                        echo "$cls"
                ;;
        esac
else
        echo "$file2 does not exist"
fi