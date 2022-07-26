#!/bin/bash


echo -e "\n #Question 1: Read a number as input and print table of powers of that are less than equal to 2^input till 256 is reached \n"
read -p "  Input a number : " num
echo -e "\n[+] Validating input"

if [[ $num =~ ^[0-9]+$ ]]
then
	lmt=0
	i=1
        echo "[+] Valid input"
        while (( $lmt<256 && $i<=$num ))
        do
		lmt=$((2**$i))
                echo -e "\n >>>>> 2 to the power of $i = $lmt <<<<<"
		(( i++ ))
        done
else
        echo -e "\nINVALID INPUT!!!"
fi

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n #Question 2: Keep flipping a coin till either HEAD or TAIL wins 11 Times \n"

Head=0
Tail=1

HC=0
TC=0
total=0

while (( $HC<11 && $TC<11 ))
do
	#echo "[+] Flipping a coin"
	flip=$((RANDOM%2))
	if [ $flip -eq $Head ]
	then
		(( HC++ ))
		#echo -e " Result : HEADS - Head Count = $HC  Tail Count = $TC \n"
	else
		(( TC++ ))
		#echo -e " Result : TAILS - Head Count = $HC  Tail Count = $TC \n"
	fi
	(( total++ ))
done

echo "  >>>>> Coin flipped : $total times <<<<< - Head Count : $HC Tail Count : $TC "

echo -e "\n          ----------xxxxx----------          \n"


echo -e "\n #Question 4: Gamble with budget of 100 Rs. If won +2 Rs else -2 Rs. Stop at 200 Rs or 0 Rs. \n"

Pocket=100

Win=1
Lose=0

total=0

while (( $Pocket!=200 && $Pocket!=0 ))
do
	#echo "[+] Lay a bet"
	result=$((RANDOM%2))
	if [ $result -eq $Win ]
	then
		Pocket=$(($Pocket+2))
		#echo -e " Result : WON - Balance : $Pocket \n"
	else
		Pocket=$(($Pocket-2))
		#echo -e " Result : LOST - Balance : $Pocket \n"
	fi
	(( total++ ))
done

echo -e "\n  >>>>> Bet Laid : $total times <<<<<  MONEY IN HAND : Rs.$Pocket "

echo -e "\n          ----------xxxxx----------          \n"
