#!/bin/bash

echo -e "\n #Question 1 : Convert Celsius to Fahrenheit and vice versa for given input. \n"

function D2F()
{
	degC=$1
	degF=`echo $degC 9 5 32 | awk '{print $1*$2/$3+$4}'`
	echo -e "\n  >>>> $degC Celsius = $degF Fahrenheit <<<< "

}

function F2D()
{
	degF=$1
	degC=`echo $(($degF-32)) 5 9 | awk '{print $1*$2/$3}'`
	echo -e "\n  >>>> $degF Fahrenheit = $degC Celsius <<<< "

}

read -p " >> Enter 1 for DegC to DegF; 2 for DegF to DegC conversion : " con

case $con in
	1)
		read -p " >> Enter _ degC : " c
		if [[ $c =~ ^[0-9].+$ ]]
		then
			D2F $c
		else
			echo " Invalid Input !! "
		fi
	;;

	2)
		read -p " >> Enter _ degF : " f
		if [[ $f =~ ^[0-9].+$ ]]
		then
			F2D $f
		else
			echo " Invalid Input !! "
		fi
	;;

	*)
		echo "  Invalid Selection !! "
	;;
esac

echo -e "\n          ----------xxxxx----------          \n"

echo -e "\n #Question 2 : Write a function to check if the two numbers are Palindromes \n"

function check()
{
	word=$1
	len=${#word}
	for (( i=1;i<=$len;i++ ))
	do
		if [ ${word:$len-$i:1} != ${word:$i-1:1} ]
		then
			break
		fi
	done

	if [ $i -ge $len ]
	then
		echo -e "\n >>>> $word IS a Palindrome <<<< "
	else
		echo -e "\n >>>> $word is NOT a Palindrome <<<< "
	fi
}

read -p " _____ Enter words or numbers (not more than 2) : " a b

if [ ${#a} -eq 0 ]
then
	if [ ${#b} -eq 0 ]
	then
		echo -e "\n No input found !! "
	else
		check $b
	fi
elif [ ${#b} -eq 0 ]
then
	check $a
else
	check $a
	check $b
fi

echo -e "\n          ----------xxxxx----------          \n"

echo -e "\n #Question 3 : Take a number from user and check if the is prime or not. If prime then check its Palindrome for prime \n"

function getPalindrome()
{
	Pnum=''
	num=$1
	len=${#num}
	for (( i=1; i<=$len; i++ ))
	do
		Pnum+=${num:$len-$i:1}
	done
}

function chkPrime()
{
	num=$1
	for (( i=2; i<=$num/2; i++ ))
	do
		ans=$(( $num%i ))
		if [ $ans -eq 0 ]
		then
			echo -e "\n >>>> $num is NOT PRIME <<<< "
			break
		fi
	done

	if [ $i == $(($num/2+1)) ]
	then
		echo -e "\n >>>> $num IS PRIME <<<< "
		Result="Pass"
	fi

}

read -p " >> Enter a number : " a

if [[ $a =~ ^[0-9]+$ ]]
then

	chkPrime $a

	if [[ $Result == "Pass" ]]
	then
		getPalindrome $a
		echo -e "\n[+] Checking if $Pnum is PRIME or not..."
		chkPrime $Pnum
	fi

else
	echo -e "\n Invalid Input "
fi

echo -e "\n          ----------xxxxx----------          \n"
