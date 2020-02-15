#!/bin/bash -x

#CONSTANT
PER_HOUR_WAGE=20
FULL_TIME_HOURS=8
PART_TIME_HOURS=4
IS_FULL_TIME=1
Is_PART_TIME=2

#STORE RANDOM VALUE
randomcheck=$((RANDOM%3))

#CALCULATING EMPLOYEE DAILY WAGE
case $randomcheck in
	1)
		employeeHours=$FULL_TIME_HOURS
		echo "Full Time Employee Wage Is: "
		;;
	2)
		employeeHours=$PART_TIME_HOURS
		echo "Part Time Employee Wage Is: "
		;;
	*)
		employeeHours=0
		echo "Employee Is Not Working: "
		;;
esac

#DISPLAYING PART TIME OR FULL TIME EMPLOYEE WAGE
salary=$(($PER_HOUR_WAGE*$employeeHours))
