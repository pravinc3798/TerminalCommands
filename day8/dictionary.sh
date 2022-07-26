#!/bin/bash

echo -e "\n #Question 1 : Roll a die till one of the number appears 10 times and find the number that appeared most and least \n"

declare -A die; max=0; min=11; rolled=0

for i in {1..6}
do
	die[$i]=0
done

while (( ${die[1]} < 10 && ${die[2]} < 10 && ${die[3]} < 10 && ${die[4]} < 10 && ${die[5]} < 10 && ${die[6]} < 10 ))
do
	((rolled++))
	num=$((RANDOM%6+1))
	die[$num]=$((${die[$num]}+1))
done

echo -e " [+] Die rolled : $rolled Times \n\n >> Die Numbers : { ${!die[@]} } \n >> Roll Result : { ${die[@]} }"

for i in ${!die[@]}
do
	count=${die[$i]}
	if [[ $count -gt $max ]]
	then
		max=$count
		imax=$i
	elif [[ $count -lt $min ]]
	then
		min=$count
		imin=$i
	fi
done

echo -e "\n >>>> $imax has appeared $max times <<<< \n >>>> $imin has appeared $min times <<<< \n\n          ----------xxxxx----------          \n"


echo -e "\n #Question 2 : Generate birth month of 50 individuals. Find all individuals having birthdays in same month \n"

declare -A birth
declare -A Mcount
counter=0
max=0
monthlst=(January February March April May June July August September October November December)

for i in {1..50}
do
	month=${monthlst[$((RANDOM%12))]}
	birth['User_'$i]=$month
	Mcount[$month]=$((${Mcount[$month]}+1))
done

for i in ${!Mcount[@]}
do
	echo " [+]  ${Mcount[$i]} Individual were born in the $i"
	count=${Mcount[$i]}
	if [[ $count -gt $max ]]
	then
		max=$count
		Fmonth=$i
	fi
done
echo -e "\n Most frequent birth Month : $Fmonth ($max Individuals) \n"

for i in ${!birth[@]}
do
	if [[ ${birth[$i]} == $Fmonth ]]
	then
		usrlst[((counter++))]=$i
	fi
done

echo -e " >>>> Individuals Born in the month of $Fmonth are [ ${usrlst[@]} ] <<<< \n\n          ----------xxxxx----------          "
