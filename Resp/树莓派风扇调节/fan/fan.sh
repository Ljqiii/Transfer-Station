#!/bin/bash

HIGH_TEMP=44
FEVIATION=2;
declare -i Temperature=0;
OnFlag=false;
OffFlag=false;

LogFile="/var/log/fan.log"

function LogOut()
{
	echo  "`date "+%Y-%m-%d %H:%M:%S"` temp limit is ${HIGH_TEMP}," $1 >> $LogFile 
}


function GetTemperature()
{
	Temperature=`cat /sys/class/thermal/thermal_zone0/temp`;
	if [ $? != 0 ]; then
		LogOut "GetTemperatur Failed."
		exit 1;
	fi
	Temperature=$Temperature/1000;
}

function FanOn()
{
	gpio write 8 1;
	if [ $? != 0 ]; then
		LogOut "FanOn Failed." 
		exit 1;
	fi
}

function FanOff()
{
	gpio write 8 0;
	if [ $? != 0 ]; then
		LogOut "FanOff Failed."
		exit 1;
	fi

}

function FanInit()
{
	gpio mode 8 out >/dev/null 2>&1;
	if [ $? != 0 ]; then
		LogOut "FanInit Failed, Please Check install wiringPi."
		exit 1;
	fi

	gpio write 8 0;
}



FanInit;
GetTemperature;

if [ $# == 1 ]; then
	case $1 in	
		"start")
			;;
		"stop")
			FanOff;
			LogOut "current CPU temperature is $Temperature, Fan has turn off."
			sleep 1;
			exit 0;
			;;	
		*)
			echo "Usage: $0 ( start | stop )";
			;;
	esac
else  
	echo "Usage: $0 ( start | stop )";
	exit 1;
fi
		

while true; 
do	
	GetTemperature;

	if (( $Temperature > $HIGH_TEMP + $FEVIATION)) && [ $OnFlag == false ]; then
			FanOn;
			LogOut "current CPU temperature is $Temperature, Fan has turn on."
			OffFlag=false;
			OnFlag=true;
	elif (( $Temperature < $HIGH_TEMP - $FEVIATION)) && [ $OffFlag == false ]; then
			FanOff;
			LogOut "current CPU temperature is $Temperature, Fan has turn off."
			OnFlag=false;
			OffFlag=true;
	fi

	sleep 5;

done



