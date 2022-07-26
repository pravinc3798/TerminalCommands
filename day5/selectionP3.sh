#!/bin/bash

echo -e "\n #Question 1: Read a single digit number and write the number in word \n"

read -p "Enter a single digit number : " num

case $num in
	0) echo -e "\n >>>> $num : ZERO" ;;
	1) echo -e "\n >>>> $num : ONE" ;;
	2) echo -e "\n >>>> $num : TWO" ;;
	3) echo -e "\n >>>> $num : THREE" ;;
	4) echo -e "\n >>>> $num : FOUR" ;;
	5) echo -e "\n >>>> $num : FIVE" ;;
	6) echo -e "\n >>>> $num : SIX" ;;
	7) echo -e "\n >>>> $num : SEVEN" ;;
	8) echo -e "\n >>>> $num : EIGHT" ;;
	*) echo -e "\n INVALID INPUT !!" ;;
esac

echo -e "\n            ----------xxxxx----------          "

echo -e "\n #Question 2: Read a number and display the week day \n"

read -p "Enter a number to get corresponding week day : " num

case $num in
	0) echo -e "\n >>>> $num : SUNDAY" ;;
	1) echo -e "\n >>>> $num : MONDAY" ;;
	2) echo -e "\n >>>> $num : TUESDAY" ;;
	3) echo -e "\n >>>> $num : WEDNESDAY" ;;
	4) echo -e "\n >>>> $num : THURSDAY" ;;
	5) echo -e "\n >>>> $num : FRIDAY" ;;
	6) echo -e "\n >>>> $num : SATURDAY" ;;
	*) echo -e "\n INVALID INPUT !!" ;;
esac

echo -e "\n            ----------xxxxx----------          "

echo -e "\n #Question 3: Read a number and display the number place \n"

read -p "Enter a number (not more than 9 million) : " n

num=`expr $n + 0`
digits=`echo "${#num}"`
mod=1

echo " "

places=("Ones" "Tens" "Hundreds" "Thousands" "Ten Thousands" "Hundred Thousands" "Millions")
case $n in
	[0-9]|[0-9][0-9]|[0-9][0-9][0-9]|[0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9][0-9][0-9] )
		for i in $(seq 1 $digits)
		do
			mod+=0
                        echo " >>>> ${places[$((i-1))]} : `echo $(($num%$mod)) | awk -F "" '{print $1}'`"
		done
		;;

	*) echo -e "\n INVALID INPUT !!" ;;
esac

echo -e "\n            ----------xxxxx----------          "

echo -e "\n #Question 4: Take user input and do unit conversion \n"
echo -e " Types of conversion \n  1. Feet to Inch \n  2. Inch to Feet \n  3. Feet to Meter \n  4. Meter to Feet \n"

read -p "Enter a number corresponding to conversion type required : " type

echo " "

read -p "Enter _____ Length to be converted : " num

if [[ $num =~ ^[0-9].+$ ]]
then
	case $type in
		[1]|[Oo][Nn][Ee] )
			echo -e "\n $num Fts. = `echo $num 12 | awk '{print $1*$2}'` Inches "
		;;

		[2]|[Tt][Ww][Oo] )
			echo -e "\n $num Inches = `echo $num 12 | awk '{print $1/$2}'` Feets "
		;;

		[3]|[Tt][Hh][Rr][Ee][Ee] )
			echo -e "\n $num Fts. = `echo $num 3.281 | awk '{print $1/$2}'` Meters "
		;;

		[4]|[Ff][Oo][Uu][Rr] )
			echo -e "\n $num Mtr. = `echo $num 3.281 | awk '{print $1*$2}'` Feets "
		;;

		*) echo -e "\n INVALID INPUT !!" ;;
	esac

else

	echo " INVALID INPUT !!"

fi

echo -e "\n            ----------xxxxx----------          "

