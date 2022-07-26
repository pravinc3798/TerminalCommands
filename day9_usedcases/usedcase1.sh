#!/bin/bash -x


echo " Check whether the employee is present or absent "

Present=1

randomcheck=$((RANDOM%2))

if [ $Present -eq $randomcheck ]
then
	echo "Employee is present";
else
	echo "Employee is absent";
fi
