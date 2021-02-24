#!/bin/bash -x

echo "Wel-Come"
echo "Use Case Statement"

ratePerHour=20

TotalSalery=0
workingDay=1
for((day=1;day<=30;day++))
do
	while(($workingDay<=20))
	do
		dailyHour=8
		(( workingDay++ ))
		salery=$(($ratePerHour*$dailyHour))
		TotalSalery=$(($salery+$TotalSalery))
		(( $workingDay++ ))
	done
done
echo $TotalSalery
