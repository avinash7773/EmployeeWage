#!/bin/bash -x

echo "Wel-Come"

ratePerHour=20
dailyHour=8
random=$((RANDOM%2))
if(($random==0))
then
	echo "employee is absent"
else
	salery=$(( $random*$dailyHour*$ratePerHour ))
	echo "employee is present and salery =" $salery
fi

