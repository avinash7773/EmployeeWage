#!/bin/bash -x

echo "Wel-Come"

ratePerHour=20
TotalSalery=0
workingDay=1
while(($workingDay<=20 ))
do
	random=$((RANDOM%2))
	if(($random==1))
	then
		workingHourPerDay=8
		salery=$(( $ratePerHour*$workingHourPerDay ))
		TotalSalery=$(( $salery+$TotalSalery ))
		((workingDay++))
	else
		workingHourPerDay=0
	fi
done
echo $TotalSalery
