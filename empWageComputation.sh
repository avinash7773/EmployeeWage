#!/bin/bash -x

echo "Wel-Come"

TotalworkingHours=0
workingDay=1
function getworkingHour(){
	if(($1 == 1))
	then
		workinghoursPerDay=8
	else
		workinghoursPerDay=0
	fi
	TotalWorkingHours=$(( $TotalWorkingHours+$workinghoursPerDay ))

	echo $TotalWorkingHours
}

while(($workingDay<=20))
do
	random=$((RANDOM%2))
	TotalWorkingHours=$( getworkingHour $((random)) )

	if(( $random == 1 ))
	then
		((workingDay++))
	fi


done

echo $TotalWorkingHours


