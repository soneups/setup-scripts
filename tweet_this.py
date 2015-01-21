#!/usr/bin/env python
# Simple Python script to tweet the command line...
# 21-Jan-2015 v1.0 initial script
# this file - https://github.com/soneups/setup-scripts/raw/master/tweet_this.py

import sys
from twython import Twython

# Define location of api files - recorded in a file - avoids a GitHub slurp for API keys!
keys_file='/home/pi/piweather/at_garysone.key'

# Read API keys from file
with open(keys_file) as f:
    CONSUMER_KEY = f.readline().strip("\n")
    CONSUMER_SECRET = f.readline().strip("\n")
    ACCESS_KEY = f.readline().strip("\n")
    ACCESS_SECRET = f.readline().strip("\n")

# Post tweet
Twython(CONSUMER_KEY,CONSUMER_SECRET,ACCESS_KEY,ACCESS_SECRET).update_status(status=sys.argv[1])
