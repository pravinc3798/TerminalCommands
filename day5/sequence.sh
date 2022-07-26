#!/bin/bash

echo -e "\n #Question 1: Use RANDOM Function to get single digit value \n"

echo -e "[+] '$'((RANDOM%10))\n"
echo -e " Random Number >>>> $((RANDOM%10)) <<<<"

echo "                         ---------------xxxxxxxx-------------------                             "

echo -e "\n #Question 2: Use Random function to dice number between 0-6 \n"

echo -e "[+] '$'((RANDOM%7))\n"
echo -e " DICE : >>>> $((RANDOM%7)) <<<<"

echo "                         ---------------xxxxxxxx-------------------                             "

echo -e "\n #Question 3: Add two dice number and print the result \n"

sum=0
for i in {1..2}
do
	z=$((RANDOM%7));
	echo -e "[+] DICE $i = $z"
	sum=$(($sum+$z));
done

echo -e "\n SUM >>>> $sum <<<< \n"

echo "                         ---------------xxxxxxxx-------------------                             "

echo -e "\n Question 4: Read 5 random 2 digit numbers and print their sum and average \n"

sum=0
for i in {1..5}
do
	z=$((RANDOM%100));
	echo -e "[+] NUM $i = $z"
	sum=$(($sum+$z));
	counter=$i
done

avg=`echo $sum $counter | awk '{print $1/$2}'`

echo -e "\n SUM >>>> $sum <<<< \n"
echo -e " AVG >>>> $avg <<<< \n"

echo "                         ---------------xxxxxxxx-------------------                             "


echo -e "\n Question 5: Unit Converter, Area Calculator, Area Converter \n"

echo -e " Select the operation to be performed \n 1. Unit Conversion \n 2. Area Calculation \n 3. Area Conversion \n"

read -p " _____ Input operation number : " op;

case "$op" in
	[1] | [Oo][Nn][Ee])
		echo -e "\n Types of conversion available \n 1. Feet to Inch \n 2. Inch to Feet \n 3. Meter to feet \n 4. Feet to meter \n"
		read -p " ____ Input conversion number : " cn;
		case "$cn" in
			[1] | [Oo][Nn][Ee])
				echo -e "\n"
				read -p "Enter ___ ft. : " ft;
				if [[ $ft =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					inch=`echo $ft | awk '{print $1*12}'`
					echo -e "\n >>>> $ft ft. = $inch inches <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

			[2] | [Tt][Ww][Oo])
				echo -e "\n"
				read -p "Enter ___ inches : " inch;
				if [[ $inch =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					ft=`echo $inch | awk '{print $1/12}'`
					echo -e "\n >>>> $inch inches = $ft ft. <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;


			[3] | [Tt][Hh][Rr][Ee])
				echo -e "\n"
				read -p "Enter ___ MTR. : " mtr;
				if [[ $mtr =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					ft=`echo $mtr | awk '{print $1*3.28}'`
					echo -e "\n >>>> $mtr MTR. = $ft ft. <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;


			[4] | [Ff][Oo][Uu][Rr])
				echo -e "\n"
				read -p "Enter ___ ft. : " ft;
				if [[ $ft =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					mtr=`echo $ft | awk '{print $1*0.328}'`
					echo -e "\n >>>> $ft ft. = $mtr MTR <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;


			*)
				echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				echo "                         ---------------xxxxxxxx-------------------                             "



			;;
		esac
	;;

	[2] | [Tt][Ww][Oo] )

		echo -e "\n Types of area calculation available \n 1. Rectangle \n 2. Circle \n 3. Triangle \n "
		read -p " ____ Input the number for shape of area : " cn;
		case "$cn" in
			[1] | [Oo][Nn][Ee])
				echo -e "\n"
				read -p "Enter Width ____ (Ft.) : " width;
				read -p "Enter Breadth ____ (Ft.) : " breadth;
				if { [[ $width =~ ^-?[1-9]+$ ]] || [[ $width =~ ^-?[1-9].+$ ]] ;} \
				 && { [[ $breadth =~ ^-?[1-9]+$ ]] || [[ $breadth =~ ^-?[1-9].+$ ]] ;}
				then
					area=`echo $(($width*$breadth)) | awk '{print $1}'`
					echo -e "\n >>>> Area of rectangle = $area (sq. ft.) <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

			[2] | [Tt][Ww][Oo])
				echo -e "\n"
				read -p "Enter the radius of circle ____ (Ft.) : " radius;
				if [[ $radius =~ ^-?[1-9]+$ ]] || [[ $radius =~ ^-?[1-9].+$ ]]
				then
					area=`echo $radius | awk '{print $1*$1*3.14}'`
					echo -e "\n >>>> Area of circle = $area (sq. ft.) <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

			[3] | [Tt][Hh][Rr][Ee][Ee])
				echo -e "\n"
				read -p "Enter Width ____ (Ft.) : " width;
				read -p "Enter Height ____ (Ft.) : " breadth;
				if { [[ $width =~ ^-?[1-9]+$ ]] || [[ $width =~ ^-?[1-9].+$ ]] ;} \
				 && { [[ $breadth =~ ^-?[1-9]+$ ]] || [[ $breadth =~ ^-?[1-9].+$ ]] ;}
				then
					area=`echo $(($width*$breadth/2)) | awk '{print $1}'`
					echo -e "\n >>>> Area of Triangle = $area (sq. ft.) <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "
			;;


			*)
				echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

		esac
	;;

	[3] | [Th][Hh][Rr][Ee][Ee])
		echo -e "\n Types of conversion available \n 1. Sq. Ft. to Sq. Mtr. \n 2. Sq. Ft. to Sq. Inch \n 3. Sq. Ft. to Acres \n"
		read -p " ____ Input conversion number : " cn;
		case "$cn" in
			[1] | [Oo][Nn][Ee])
				echo -e "\n"
				read -p "Enter ___ Sq. ft. : " ft;
				if [[ $ft =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					sqmtr=`echo $ft | awk '{print $1/10.764}'`
					echo -e "\n >>>> $ft Sq. ft. = $sqmtr Sq. Mtr. <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

			[2] | [Tt][Ww][Oo])
				echo -e "\n"
				read -p "Enter ___ Sq. ft. : " ft;
				if [[ $ft =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					sqin=`echo $ft | awk '{print $1*144}'`
					echo -e "\n >>>> $ft Sq. ft. = $sqin Sq. Inch <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

			[3] | [Tt][Hh][Rr][Ee][Ee])
				echo -e "\n"
				read -p "Enter ___ Sq. ft. : " ft;
				if [[ $ft =~ ^-?[1-9]+$ ]] || [[ $ft =~ ^-?[1-9].+$ ]]
				then
					acre=`echo $ft | awk '{print $1/43560}'`
					echo -e "\n >>>> $ft Sq. ft. = $acre Acre <<<< \n"
				else
					echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				fi

				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

			*)
				echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
				echo "                         ---------------xxxxxxxx-------------------                             "

			;;

		esac
	;;


	*)
		echo -e "\n INCORRECT INPUT!! TRY AGAIN \n"
		echo "                         ---------------xxxxxxxx-------------------                             "
	;;

esac
