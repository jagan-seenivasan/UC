#!/bin/bash -x

isParTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numOfWorkDays=20

for (( day=1; day<=$numOfWorkDays; day++ ))
do
          randomCheck=$((RANDOM%3))
          case $randomCheck in 
                    $isPartTime)
                            empHrs=4
                            ;;
                    $isFullTime)
                             empHrs=8
                             ;;
                    *)
                             empHrs=0
                             ;;
       esac

      salary=$(($empHrs*$empRatePerHr))
      totalSalary=$(($totalSalary+$salary));
done
