#!/bin/bash -x

isFT=1
isPT=2

maxHrs=100
workingDays=20
empRateHr=20

totalEmpHr=0
totalWorkingDays=0
totalWage=0

function getHrs()
{
	case $rC in
		$isFT) empHrs=8 ;;
		$isPT) empHrs=4 ;;
		*)     empHrs=0 ;;
	esac
}

while [[ $totalEmpHr -lt $maxHrs && $totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))
	index=$totalWorkingDays
	rC=$((RANDOM%3))
	getHrs $rC
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWage=$(($empHrs*$empRateHr))
	totalWage=$(($totalWage+$dailyWage))
	wageArray[$index]=`echo "(Day $index : $ $dailyWage)"`
done

echo -e "\n ${wageArray[@]}"

echo -e "\n Total Wage : $ $totalWage "
