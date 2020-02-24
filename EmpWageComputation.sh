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
totalWorkingDays=0

#DECLARING A DICTIONARY
declare -A dailyWage

#CALCULATE EMPLOYEE WORKING HOURS
function workingHours()
{
	randomCheck=$((RANDOM%3))
	case $randomCheck in
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

#CALCULATE DAILY WAGE
function calculateWage()
{
	employeeHours=$1
	employeeWage=$(($employeeHours*$PER_HOUR_WAGE))
	echo $employeeWage
}

#CALCULATE TOTAL EMPLOYEE WORKING HOURS AND WORKING DAYS
while [ $DAYS_PER_MONTH -ne $totalWorkingDays -a $totalEmployeeHours -le $TOTALL_WORKING_HOURS ]
do
	dailyWage[$totalWorkingDays]=$(calculateWage $(workingHours))
	totalEmployeeHours=$(($totalEmployeeHours+$(workingHours)))
	((totalWorkingDays++))
done

#PRINT EMPLOYEE WAGE
echo "Daily Wages: ${dailyWage[@]}"
echo "Days: ${!dailyWage[@]}"
echo "Total Wage: $(($PER_HOUR_WAGE*$totalEmployeeHours))"

