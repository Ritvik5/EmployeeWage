#!/bin/bash -x

isPresent=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;


function getWorkingHours() {
	case $1 in
	$isFullTime)
	workHours=8
	;;
	$isPartTime)
	workHours=4
	;;
	*)
	workHours=0;
esac
	echo $workHours
}

while [[ $totalworkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++));
	workingHours="$( getWorkingHours $((RANDOM%3)) )";
	totalworkHours=$(($totalworkHours + $workHours));
done


totalSalary=$(($totaworkHours * $empRatePerHr));

