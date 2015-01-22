# script to get the username, hostname and ip address
# this file - https://raw.githubusercontent.com/soneups/setup-scripts/master/uhi.py

import os
import socket
hn = socket.gethostname()
ip = os.popen('hostname -I').read().strip("\n")
wai = os.popen('whoami').read().strip("\n")
print str(wai)+', You are on host: '+str(hn)+ ' ip: '+str(ip)
