#!/bin/bash -x

echo "------------------WELCOME------------------"

#CONSTANT
Is_present=1

#STORE RANDOM VALUE
randomcheck=$((RANDOM%2))

#CHECK EMPLOYEE IS PRESENT OR ABSENT
if [ $randomcheck -eq $Is_present ]
then
	echo "Employee Is Present"
else
	echo "Employee Is Absent"
fi

