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
totalEmployeeHours=0

#CALCULATE EMPLOYEE WORKING HOURS
function workingHours()
{
	randomcheck=$((RANDOM%3))
	case $randomcheck in
		$IS_FULL_TIME)
				employeeHours=8
				;;
		$Is_PART_TIME)
				employeeHours=4
				;;
		*)
				employeeHours=0
				;;
	esac
	echo $employeeHours
}

#CALCULATE TOTAL EMPLOYEE WORKING HOURS
while [ $DAYS_PER_MONTH -ne 0 -a $totalEmployeeHours -le $TOTALL_WORKING_HOURS ]
do
  	(( DAYS_PER_MONTH-- ))
	totalEmployeeHours=$(($totalEmployeeHours + $(workingHours)))
done

#PRINT EMPLOYEE WAGE
echo $(($PER_HOUR_WAGE*$totalEmployeeHours))
