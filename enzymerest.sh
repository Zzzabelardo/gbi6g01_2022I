#! /bin/bash

for file in $1
do
	head -n 5 $file | cut -d ">" -f 1 | tr "U" " " >otros.txt
done
