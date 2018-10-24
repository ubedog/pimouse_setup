#!/bin/bash -xve
#Written by Akira Tani
#written by A. Tani
31f06de11e2003a4f828b0e2a8646e5acad00097

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0
