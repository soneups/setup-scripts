#!/usr/bin/env python
# Python script to tweet useful information 30 seconds after boot...
#
# 23-Jan-2015 v1.0 initial script
#

import sys
import time
import socket
import os

from twython import Twython

# Define location of api files - recorded in a file - avoids a GitHub slurp for API keys!
keys_file='/home/scripts/at_garysone.key'

# Read API keys from file
with open(keys_file) as f:
    CONSUMER_KEY = f.readline().strip("\n")
    CONSUMER_SECRET = f.readline().strip("\n")
    ACCESS_KEY = f.readline().strip("\n")
    ACCESS_SECRET = f.readline().strip("\n")

# Get hostname, ip address and whoami
hn = socket.gethostname()
ip = os.popen('hostname -I').read().strip("\n")
wai = os.popen('whoami').read().strip("\n")


# Post tweet
time.sleep(10)
api = Twython(CONSUMER_KEY,CONSUMER_SECRET,ACCESS_KEY,ACCESS_SECRET)
api.update_status(status=str(time.strftime("%d/%m/%Y"))+"@"+str(time.strftime("%H:%M:%S"))+' - user: ' + str(wai) + ', host: ' +str(hn)+ ', ip: ' +str(ip)+' ('+sys.argv[1]+')')
