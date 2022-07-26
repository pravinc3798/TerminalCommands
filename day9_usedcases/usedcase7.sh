#!/bin/bash -x

isPT=1
isFT=2
empRateHr=20
workingDays=20
maxHrs=100

totalEmpHr=0
totalWorkingDays=0

function getWorkHrs()
{
	case $rC in
		$isPT) empHrs=4 ;;
		$isFT) empHrs=8 ;;
		*)     empHrs=0 ;;
	esac
}

while [[ $totalEmpHr -lt $maxHrs && $totalWorkingDays -lt $workingDays ]]
do
	(( totalWorkingDays++ ))
	rC=$((RANDOM%3))
	getWorkHrs $rC
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$empRateHr))
