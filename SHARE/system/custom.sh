#!/bin/bash

#stop rumble
echo 0 > /sys/class/pwm/pwmchip0/export
echo 1000000 > /sys/class/pwm/pwmchip0/pwm0/period
echo 1 > /sys/class/pwm/pwmchip0/pwm0/enable
echo 1000000 > /sys/class/pwm/pwmchip0/pwm0/duty_cycle

#power information led on
echo 77 > /sys/class/gpio/export
chmod 777 /sys/class/gpio/gpio77/direction
echo out > /sys/class/gpio/gpio77/direction
chmod 777 /sys/class/gpio/gpio77/value
echo 0 > /sys/class/gpio/gpio77/value

/userdata/system/rg351p/rg351p-js2xbox &

