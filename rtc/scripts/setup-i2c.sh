#!/bin/bash -v
#sudo apt-get update
#sudo apt-get install python-smbus i2c-tools
##/etc/modules
#echo i2c-bcm2708 >>/etc/modules
#echo i2c-dev >>/etc/modules
#echo raspi-blacklist - make sure its empty!
#cat /etc/modprobe.d/raspi-blacklist.conf
##/boot/config.txt
#echo dtparam=i2c1=on >>/boot/config.txt
#echo dtparam=i2c_arm=on >>/boot/config.txt
#sudo i2cdetect -y 1
#sudo modprobe rtc-ds1307
#sudo bash
#echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-1/new_device
#exit
##read/show the hwclock date/time
#sudo hwclock -r
#sudo apt-get update && sudo apt-get install python-pip && sudo pip install ntplib
#wget ...my ntpsyncscript here!...
#run syncntp.py
##write/set the hwclock date/time
#sudo hwclock -w
#sudo hwclock -r
##/etc/modules
#echo rtc-ds1307 >> /etc/modules
#cat /etc/modules
##/etc/rc.local
#echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-1/new_device >>rc.local
#echo sudo hwclock -s >>rc.local
