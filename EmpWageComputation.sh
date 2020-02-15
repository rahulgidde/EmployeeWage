#!/bin/bash -x

#CONSTANT
PER_HOUR_WAGE=20
FULL_TIME_HOURS=8
PART_TIME_HOURS=4
IS_FULL_TIME=1
Is_PART_TIME=2
DAYS_PER_MONTH=20
TOTALL_WORKING_HOURS=100

#VARIABLE
employeeHours=0

#CHECK EMPLOYEE IS PRESENT OR ABSENT TILL CONDITION IS NOT SATISFIED
while [ $DAYS_PER_MONTH -ne 0 -a $employeeHours -le $TOTALL_WORKING_HOURS ]
do
	randomcheck=$((RANDOM%3))
	case $randomcheck in
		$IS_FULL_TIME)
			employeeHours=$(($employeeHours+$FULL_TIME_HOURS))
			;;
		$Is_PART_TIME)
			employeeHours=$(($employeeHours+$PART_TIME_HOURS))
			;;
		*)
			employeeHours=$(($employeeHours+0))
			;;
	esac
			((DAYS_PER_MONTH--))
done

#CALCULATE EMPLOYEE WAGE PER MONTH
wagePerMonth=$(($PER_HOUR_WAGE*$employeeHours))
echo "Employee Wage Per Month = $wagePerMonth"
