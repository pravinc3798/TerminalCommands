#!/bin/bash

echo -e "\n #QUESTION 1:Read 5 Random 3 Digit Numbers And then Output Minimum And Maximum Values \n"

min=0
max=0
for num in {1..5}
do
	x=$((RANDOM%1000));
	echo "[+] x$num : " $x;

	if [ $num -eq 1 ]
	then
		min=$x;
	elif [ $x -lt $min ]
	then
		min=$x;
	elif [ $x -gt $max ]
	then
		max=$x;
	fi

done

echo -e "\n >>>>  Minimum Value: $min \n"
echo " >>>>  Maximum Value: $max"
echo "                                   ----------xx----------                                     "



echo -e "\n #Question 4: Flip a coin \n\n [+]Flipping .......\n"

x=$((RANDOM%2))
if [ $x -eq 1 ]
then
	echo " >>>>  HEADS";
else
	echo " >>>> TAILS";
fi

echo "                                   ----------xx----------                                     "

echo -e "\n #Question 3: Take year as a input and check whether it is a leap year or not \n "

read -p " _____ ENTER A YEAR : " y;

echo -e "\n[+]Validating Input..... "

if [[ $y =~ ^-?[0-9]+$ ]]
then
	echo -e "[+]Valid Input. \n[+]Leap year Check....."

	if [ $(($y%4)) == 0 ]
	then
		echo -e "\n >>>> $y IS A LEAP YEAR";
	else
		echo -e "\n >>>> $y NOT A LEAP YEAR";
	fi
else
	echo -e "\n !!!! Invalid Input!";
fi

echo "                                   ----------xx----------                                     "

echo -e "\n #Question 5: Take input as day and month. Return True if the day of month is between March 20 and June 20. \n"

read -p " _____ Input a Date (yyyy-mm-dd) : " e;

echo -e "\n[+]Validating Date....."

if [[ $e =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2} ]]
then
	echo -e "[+]Valid Date\n[+]Checking if date is between the given dates.....\n";

	s=$(date -d "$e" "+%s")

	sdate=2022-03-20
	edate=2022-06-20

	start=$(date -d "$sdate" "+%s")
	end=$(date -d "$edate" "+%s")

	if [ $s -ge $start ]
	then
		if [ $s -le $end ]
		then
			echo " >>>> TRUE";
		fi
	else
		echo " >>>> FALSE";
	fi
else
	echo -e "\n !!!! Invalid Date";
fi

echo "                                   ----------xx----------                                     "
