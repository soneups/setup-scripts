#!/usr/bin/env python
# PiWeather Board
# Python Script to compare Software Clock (SWC) and Real-Time Clock chip (RTC) against Internet time service (NTP)
#HT - http://stackoverflow.com/questions/5222951/easy-way-to-get-the-correct-time-in-python
#https://pypi.python.org/pypi/ntplib/

import time
import os
import smbus
import sys

# check and warn if not running with root permission.
#if not 'SUDO_UID' in os.environ.keys():
#  print 'ERROR: Please re-run as root, hint sudo !!'
#  sys.exit(1)

print "------------------------------------------------------"
print "=== Display software clock (RTC) and internet time ==="
print "------------------------------------------------------"

# Record System Time and Date
sec = int(time.strftime("%S"))             # second (value from 0 to 59)
min = int(time.strftime("%M"))             # minute (value from 0 to 59)
hour = int(time.strftime("%H"))            # hour (value from 1 to 24)
dweek = int(time.strftime("%w"))           # day of week (value from 0 to 6)
dmonth = int(time.strftime("%d"))          # day of month (value from 1 to 31)
month = int(time.strftime ("%m"))          # month (value from 1 to 12)
year = int(time.strftime("%y"))            # year (value from 0 to 99; set 13 for 2013 year)    

# Store Time Date from software clock into valSWC
valSWC = [sec,min,hour,dweek,dmonth,month,year]


print "Software time: "+str(valSWC[2])+":"+str(valSWC[1])+":"+str(valSWC[0])

try:
    import ntplib
    client = ntplib.NTPClient()
    response = client.request('pool.ntp.org')
    print ' Network time: ' + time.strftime('%H:%M.%S',time.localtime(response.tx_time))
except:
    print('Could not contact the time server.')

