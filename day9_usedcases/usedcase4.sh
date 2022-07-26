#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
			$isPartTime )
				empHrs=4
			;;

			$isFullTime )
				empHrs=4
			;;

			* )
				empHrs=0
			;;
esac

salary=$(($empHrs*$empRatePerHr))
