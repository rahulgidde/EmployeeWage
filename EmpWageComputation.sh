#!/bin/bash -x

#CONSTANT
IS_PRESENT=1
PER_HOUR_WAGE=20

#STORE RANDOM VALUE
randomcheck=$((RANDOM%2))

#CALCULATING EMPLOYEE DAILY WAGE
if [ $randomcheck -eq $IS_PRESENT ]
then
	echo "Employee Is Present"
	hoursPerDay=8
else
	echo "Employee Is Absent"
	hoursPerDay=0
fi

#CHECKING EMPLOYEE PER DAY WAGE
dailywage=$(($PER_HOUR_WAGE*$hoursPerDay))
echo "Employee Daily Wage Is: $dailywage Rs."
