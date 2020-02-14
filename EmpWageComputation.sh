#!/bin/bash -x

echo "------------------WELCOME------------------"

#CONSTANT
IS_PRESENT=1

#STORE RANDOM VALUE
randomcheck=$((RANDOM%2))

#CHECK EMPLOYEE IS PRESENT OR ABSENT
if [ $randomcheck -eq $IS_PRESENT ]
then
	echo "Employee Is Present"
else
	echo "Employee Is Absent"
fi

