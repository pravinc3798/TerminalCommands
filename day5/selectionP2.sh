#!/bin/bash

echo -e "\n Question 1: Read a single digit number and write the number in words \n"

words=("ONE" "TWO" "THREE" "FOUR" "FIVE" "SIX" "SEVEN" "EIGHT" "NINE" "ZERO")
nums=(1 2 3 4 5 6 7 8 9 0)
index=-1

read -p " _____ Input a single digit number : " input;

echo -e "\n[+] Validating Input..... "
if [[ $input =~ ^[0-9]{1}$ ]]
then
	echo -e "[+] Valid Input. \n"
	for i in "${!nums[@]}"
	do
		if [ $i == $input ]
		then
			echo ">>>>>>>   $input : ${words[$index]}   <<<<<<<"
			break
		fi
		index=$(($index + 1))
	done
else
	echo -e "\n Bad Input !!!! "
fi

echo -e "\n              -------------------xxxxxxxxxxxxxxxx---------------------------              \n"

echo -e "\n #Question 2: Read a number and display week of the day \n"

lst=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")

read -p " _____ Input a number between 0-6 : " input;

echo -e "\n[+] Validating Input..... "

if [[ $input =~ ^[0-6]{1}$ ]]
then
	echo -e "[+] Valid Input. \n"
	for i in "${!lst[@]}"
	do
		if [ $i == $input ]
		then
			echo ">>>>>>>${lst[$i]}<<<<<<<"
			break
		fi
	done
else
	echo -e "\n Bad Input !!!! "
fi

echo -e "\n              -------------------xxxxxxxxxxxxxxxx---------------------------              \n"

echo -e "\n Question 3: Read a number and output the value place : unit, tenth, hundred, thousand place \n"

read -p " ______ Input a number (not more than 9 million) : " n

num=`expr $n + 0`
digits=`echo "${#num}"`
mod=1
places=("Ones" "Tens" "Hundreds" "Thousands" "Ten Thousands" "Hundred Thousands" "Million")

echo -e "\n[+] Validating input"

if [[ $num =~ ^[0-9]+$ && $digits -le 7 ]]
then
	echo -e "[+] Valid Input \n"

	for i in $(seq 1 $digits)
	do
		mod+=0
		echo " >> ${places[$(($i-1))]} : `echo $(($num%$mod)) | awk -F '' '{print $1}'`"
	done
else
	echo -e "\n Invalid Input !! "
fi

echo -e "\n              -------------------xxxxxxxxxxxxxxxx---------------------------              \n"

echo -e "\n Question 4: Enter 3 Numbers and perform given arithmetic operations and find min and max values \n"

read -p " ____ Value of a = " a;
read -p " ____ Value of b = " b;
read -p " ____ Value of c = " c;

echo -e "\n[+] Validating Input"

if [[ $a =~ ^[0-9]+$ && $b =~ ^[0-9]+$ && $c =~ ^[0-9]+$ ]]
then
	echo -e "[+] Valid Input \n"

	lst=()

	lst[0]=$(($a+$b*$c))
	lst[1]=$(($a%$b+$c))
	lst[2]=$(($c+$a/$b))
	lst[3]=$(($a*$b+$c))

	experiment=("a + b * c" "a % b + c" "c + a / b" "a * b + c")
	index=-1

	max=${lst[0]}
	min=${lst[0]}

	for i in "${!lst[@]}"
	do
		if [[ ${lst[$i]} -ge $max ]]
		then
			max=${lst[$i]}
		elif [[ ${lst[$i]} -le $min ]]
		then
			min=${lst[$i]}
		fi
		index=$(($index+1))
		echo -e " >>$index.  ${experiment[$index]} = ${lst[i]} "
	done

	echo -e "\n >>>> Maximum Value : $max <<<< "
	echo " >>>> Minimum Value : $min <<<< "

else
	echo -e "\n Invalid Input !! "
fi

echo -e "\n              -------------------xxxxxxxxxxxxxxxx---------------------------              \n"
