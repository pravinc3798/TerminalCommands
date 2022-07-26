#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
workingDays=20

totalSalary=0

for (( day=1; day<=$workingDays; day++ ))
do
	rC=$((RANDOM%3))
	case $rC in
		$isPartTime)
			empHrs=4
		;;

		$isFullTime)
			empHrs=8
		;;

		*)
			empHrs=0
		;;
	esac

	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done
