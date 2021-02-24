#!/bin/bash -x

echo "Wel-Come"
echo "Use Case Statement"

ratePerHour=20
random=$((RANDOM%3))

case $random in
	0) dailyHour=0
	   echo "employee is absent"
	;;
	2) dailyHour=8
	   echo "employee is fullTime and salery ="
	;;
	1) dailyHour=4
	   echo "employee is  PartTime and salery="
	;;
esac

salery=$(($random*$dailyHour*$ratePerHour))
echo $salery

