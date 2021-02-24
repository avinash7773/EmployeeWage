#!/bin/bash -x

echo "Wel-Come"

TotalworkingHours=0
workingDay=1
ratePerhour=20
TotalWage=0
function getDailyWage(){
	if(($1 == 1))
	then
		workinghoursPerDay=8
	else
		workinghoursPerDay=0
	fi
	wagePerDay=$(($workinghoursPerDay*$ratePerhour))
	echo $wagePerDay
}

while(($workingDay<=20))
do
	random=$((RANDOM%2))
	res=$( getDailyWage $((random)) )

	if(( $random == 1 ))
	then
		((workingDay++))
	fi

TotalWage=$(($res+$TotalWage))
echo  $res $TotalWage
done


