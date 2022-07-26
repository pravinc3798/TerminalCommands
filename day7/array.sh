#!/bin/bash

echo -e "\n #Question 1 : Generate 10 random 3 digit numbers and Find 2nd highest and 2nd lowest number \n"

max=0
maxindex=0
min=1000
minindex=0

for i in $(seq 1 10)
do
	num=$((RANDOM%500 + 500))
	numlst[i]=$num
	if [[ $max -lt $num ]]
	then
		max=$num
		maxindex=$i
	elif [[ $min -gt $num ]]
	then
		min=$num
		minindex=$i
	fi
done

echo -e "\n[+] Array of random number : ( ${numlst[@]} ) \n"

len=${#numlst[@]}
unset numlst[$maxindex]
unset numlst[$minindex]

max2=0
min2=1000

for (( i=1;i<=$len;i++ ))
do
	num=${numlst[i]}
	if [[ $num != '' ]]
	then
		if [[ $max2 -lt $num ]]
		then
			max2=$num
		elif [[ $min2 -gt $num ]]
		then
			min2=$num
		fi
	fi
done

echo " >>>>> 2nd Maximum Value : $max2 <<<<< "
echo " >>>>> 2nd Minimum Value : $min2 <<<<< "

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n Question 2 : Generate 10 random 3 digit numbers and Find 2nd highest and 2nd lowest number by sorting the array \n"

for (( i=1;i<=10;i++))
do
	numlst2[i]=$((RANDOM%500 +500))
done

echo -e "\n[+] Array of random number : ( ${numlst2[@]} ) \n"

sorted=($(printf '%s\n' "${numlst2[@]}" | sort))

echo -e "[+] Sorted array : ${sorted[@]} \n"

echo " >>>>> 2nd Maximum Value : ${sorted[len-2]} <<<<< "
echo " >>>>> 2nd Minimum Value : ${sorted[1]} <<<<< "

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n Question 3 : Take a range from 0-100, and find the repeated digit numbers and store them in an array \n"

counter=0
for (( i=10;i<=100;i++ ))
do
	if [[ ${i:0:1} -eq ${i:1:1} ]]
	then
		lst[((counter++))]=$i
	fi
done

echo -e "\n >>> ( ${lst[@]} ) <<< \n"

echo -e "\n          ----------xxxxx----------          \n"
