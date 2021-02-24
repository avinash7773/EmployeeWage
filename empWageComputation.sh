#!/bin/bash -x

echo "Wel-Come"

random=$((RANDOM%2))
if(($random==0))
then
	echo "employee is absent"
else
	echo "employee is present"
fi

