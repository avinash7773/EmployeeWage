#!/bin/bash -x

echo "Wel-Come"

ratePerHour=20
random=$((RANDOM%3))
if(($random==0))
then
	dailyHour=0
	echo "employee is absent"
elif(($random==2))
then
	dailyHour=8
	echo "employee is fullTime and salery ="
else
	dailyHour=4
	echo "employee is  PartTime and salery="
fi

salery=$(($random*$dailyHour*$ratePerHour))
echo $salery

