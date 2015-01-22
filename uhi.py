#script to get the username, hostname and ip address

import os
import socket
hn = socket.gethostname()
ip = os.popen('hostname -I').read()
wai = op.popen('whoami').read()
print str(wai)+', You are on host: '+str(hn)+ ' ip: '+str(ip)
