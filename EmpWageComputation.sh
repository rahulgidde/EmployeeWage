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
if [ $randomcheck -eq $IS_FULL_TIME ]
then
	employeeHours=$FULL_TIME_HOURS
elif [ $randomcheck -eq $Is_PART_TIME ]
then
	employeeHours=$PART_TIME_HOURS
else
	employeeHours=0
fi

#DISPLAYING PART TIME OR FULL TIME EMPLOYEE WAGE
salary=$(($PER_HOUR_WAGE*$employeeHours))
