#!/bin/bash
     
#Case selection for first parameter parsed
case $1 in
	gameStart)
		batcap = $(cat /sys/class/power_supply/battery/capacity)
		if [ $batcap -eq 0 ];
			then
				echo 1 > /sys/class/gpio/gpio77/value
		else
			echo 0 > /sys/class/gpio/gpio77/value
		fi
	;;
	gameStop)
		batcap = $(cat /sys/class/power_supply/battery/capacity)
		if [ $batcap -eq 0 ];
			then
				echo 1 > /sys/class/gpio/gpio77/value
		else
			echo 0 > /sys/class/gpio/gpio77/value
		fi
	;;
esac


