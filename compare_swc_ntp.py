#!/usr/bin/env python                                                                                                                                                                                   
# Python Script to compare Software Clock (SWC) againgst Internet time service (NTP)                                                                                      
# this file https://raw.githubusercontent.com/soneups/setup-scripts/master/compare_swc_ntp.py

import time                                                                                                                                                                                             
import os                                                                                                                                                                                               
import sys                                                                                                                                                                                              

print "------------------------------------------------"                                                                                                                                
print "=== Display software-clock and internet time ==="                                                                                                                                
print "------------------------------------------------"                                                                                                                                

# Record Software-clock system time and date                                                                                                                                                                           
sec = int(time.strftime("%S"))             # second (value from 0 to 59)                                                                                                                                
min = int(time.strftime("%M"))             # minute (value from 0 to 59)                                                                                                                                
hour = int(time.strftime("%H"))            # hour (value from 1 to 24)                                                                                                                                  
dweek = int(time.strftime("%w"))           # day of week (value from 0 to 6)                                                                                                                            
dmonth = int(time.strftime("%d"))          # day of month (value from 1 to 31)                                                                                                                          
month = int(time.strftime ("%m"))          # month (value from 1 to 12)                                                                                                                                 
year = int(time.strftime("%y"))            # year (value from 0 to 99; set 13 for 2013 year)                                                                                                            
# Store Time Date from software clock into valSWC                                                                                                                                                       
valSWC = [sec,min,hour,dweek,dmonth,month,year]                                                                                                                                                         

try:                                                                                                                                                                                                    
    import ntplib                                                                                                                                                                                       
    client = ntplib.NTPClient()                                                                                                                                                                         
    response = client.request('pool.ntp.org')                                                                                                                                                           
    print "Software time: "+str(valSWC[2])+":"+str(valSWC[1])+":"+str(valSWC[0])                                                                                                                            
    print ' Network time: ' + time.strftime('%H:%M.%S',time.localtime(response.tx_time))                                                                                                                
except:                                                                                                                                                                                                 
    print "Software time: "+str(valSWC[2])+":"+str(valSWC[1])+":"+str(valSWC[0])                                                                                                                            
	print(' Network time: ERROR - Could not contact the time server.')                                                                                                                                                         

#print('Done.') 
