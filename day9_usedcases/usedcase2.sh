#!/bin/bash -x


echo " Calculate daily employee wage "


Present=1;
randomcheck=$((RANDOM%2));

if [ $Present -eq $randomcheck ]
then
	empRatePerHr=20;
	empHrs=9;
	salary=$(($empRatePerHr*$empHrs));
	echo "Salary : $salary";
else
	echo "Salary : 0";
fi
