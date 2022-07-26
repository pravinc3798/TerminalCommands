#!/bin/bash

echo -e "\n #Question 1: Read a number as input and print table of powers of that are less than equal to 2^input \n"
read -p "  Input a number : " num
echo -e "\n[+] Validating input"

if [[ $num =~ ^[0-9]+$ ]]
then
	echo "[+] Valid input"
	for (( i=1;i<=num; i++ ))
	do
		echo -e "\n >>>>> 2 to the power of $i = $((2**i)) <<<<<"
	done
else
	echo -e "\nINVALID INPUT!!!"
fi

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n #Question 2: Read a number as input and print the n-th harmonic number \n"
read -p "  Input a number : " num
echo -e "\n[+] Validating input"

if [[ $num =~ ^[0-9]+$ ]]
then
	hnum=0
	echo "[+] Valid input"
	for (( i=1;i<=num; i++ ))
	do
		hnum=`echo $i $hnum | awk '{print 1/$1+$2}' `
	done
else
	echo -e "\nINVALID INPUT!!!"
fi

echo -e "\n >>>>> $(($i-1))th Harmonic Number : $hnum <<<<<"

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n #Question 3: Read a number and determine whether the number is prime or not \n"
read -p "  Enter Number : " n
echo -e "\n[+] Validating Input"

if [[ $n =~ ^[0-9]+$ ]]
then
	echo -e "[+] Valid Input\n"
	for ((i=2; i<=$n/2; i++))
	do
		ans=$(( $n%i ))
		if [ $ans -eq 0 ]
		then
			echo " >>>>> $n is NOT a Prime Number <<<<< "
			break
		fi
	done
else
	echo -e "\nINVALID INPUT!!!"
fi

if [ $i == $(($n/2+1)) ]
then
	echo " >>>>> $n is a Prime Number <<<<<"
fi

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n #Question 5: Read a number as input and print factorial of given number \n"
read -p "  Input a number : " num
echo -e "\n[+] Validating input"

if [[ $num =~ ^[0-9]+$ ]]
then
	factorial=1
	echo "[+] Valid input"
	for (( i=1;i<=num; i++ ))
	do
		factorial=$(($factorial*$i))
	done

	echo -e "\n >>>>> $num! = $factorial <<<<< "
else
	echo -e "\nINVALID INPUT!!!"
fi

echo -e "\n          ----------xxxxx----------          \n"
