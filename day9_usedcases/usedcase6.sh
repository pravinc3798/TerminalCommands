#!/bin/bash -x

isPT=1
isFT=2
empRatePerHr=20
days=20
maxHrInMonth=100

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -le $maxHrInMonth && $totalWorkingDays -le $days ]]
do
	((totalWorkingDays++))
	rC=$((RANDOM%3))

	case $rC in
		$isPT)
			EmpHrs=4
		;;
		$isFT)
			EmpHrs=8
		;;
		*)
			EmpHrs=0
		;;
	esac

	totalEmpHr=$(($totalEmpHr+$EmpHrs))
done

salary=$(($totalEmpHr*$empRatePerHr))
echo $salary
