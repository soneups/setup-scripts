#!/bin/bash -v

# adafuit.it/3295 - PCF8523 

sudo i2cdetect -y 1
# if i2cdetect retruns command  not found then install the set via 'sudo apt-get install python-smbus i2c-tools'

# edit /boot/config.txt
# dtoverlay=i2c-rtc,pcf8523

# disable the fake hwclock - HT:https://learn.adafruit.com/adding-a-real-time-clock-to-raspberry-pi/set-rtc-time
# sudo apt-get -y remove fake-hwclock
# sudo update-rc.d -f fake-hwclock remove
# sudo systemctl disable fake-hwclock

# Run sudo nano /lib/udev/hwclock-set and comment out these three lines:

#if [ -e /run/systemd/system ] ; then
# exit 0
#fi

# now attempt to read the date/time values from the RTC
sudo hwclock -D -r

# use this to sync the RPi time to the RTC
# sudo hwlock  -w

# use this to display the RTC date time values
# sudo hwclock -r
