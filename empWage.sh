#!/bin/bash -x

isPresent=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;


function getWorkingHours() {
	local $empCheck=$1
	case $empCheck in
	$isFullTime)
	workHours=8
	;;
	$isPartTime)
	workHours=4
	;;
	*)
	workHours=0;
esac
	echo $empHours
}

function getEmpWage() {
	local $empHr=$1
	echo $(($empHours*$empRatePerHr))

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHours="$( getWorkingHours $empCheck )"
	totalworkHours=$(($totalworkHours + $workHours))
	dailyWage[$totalWorkingDays]="$( getEmpWage $empHours )"
done


totalSalary=$(($totalworkHours * $empRatePerHr))
echo "Daily wage is" ${dailWage[@]}
