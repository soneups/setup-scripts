# script to get the username, hostname and ip address
# this file - https://raw.githubusercontent.com/soneups/setup-scripts/master/uhi.py

import os
import socket
hn = socket.gethostname()
ip = os.popen('hostname -I').read()
wai = os.popen('whoami').read()
print str(wai)+', You are on host: '+str(hn)+ ' ip: '+str(ip)
