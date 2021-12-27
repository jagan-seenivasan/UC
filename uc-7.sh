#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkigDays=0

function getWorkHrs(){
      case $1 in
                 $isFullTime)
                       empHrs=8
                       ;;
                 $isPartTime)
                       empHrs=4
                       ;;
                  *)
                       empHrs=0
                       ;;
     esac
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
                       $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkHrs $((RANDOM%3))
        totalEmpHr=$(($totalEmpHr+$empHrs))
done

      totalSalary=$(($totalEmpHr*$empRatePerHr))
