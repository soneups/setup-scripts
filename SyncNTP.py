# this file - https://github.com/soneups/setup-scripts/raw/master/SyncNTP.py
#HT - http://stackoverflow.com/questions/5222951/easy-way-to-get-the-correct-time-in-python                                                 
#https://pypi.python.org/pypi/ntplib/                                                                                                       
# added check to see if root
import time                                                                                                                                 
import os

# check and warn if not running with root permissions!
if not 'SUDO_UID' in os.environ.keys():
  print 'ERROR: Please re-run as root, hint - sudo'
  sys.exit(1)
                                                                                                                                            
try:                                                                                                                                        
    import ntplib                                                                                                                           
    client = ntplib.NTPClient()                                                                                                             
    response = client.request('pool.ntp.org')                                                                                               
    print client                                                                                                                            
#    print 'date ' + time.strftime('%m%d%H%M%Y.%S',time.localtime(response.tx_time))                                                         
    os.system('date ' + time.strftime('%m%d%H%M%Y.%S',time.localtime(response.tx_time)))                                                   
except:                                                                                                                                     
    print('Could not sync with time server.')                                                                                               
                                                                                                                                            
print('Done.') 
