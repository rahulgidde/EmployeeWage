#!/bin/bash -x

#CONSTANT
IS_PRESENT=1
PER_DAY_WAGE=20

#STORE RANDOM VALUE
randomcheck=$((RANDOM%2))

#CALCULATING EMPLOYEE DAILY WAGE
if [ $randomcheck -eq $IS_PRESENT ]
then
	echo "Employee Is Present"
	Present_hour=8
else
	echo "Employee Is Absent"
	Present_hour=0
fi

#CHECKING EMPLOYEE PER DAY WAGE
dailywage=$(($PER_DAY_WAGE*$Present_hour))
echo "Employee Per Day Wage Is: $dailywage Rs."
