#!/bin/bash -v

# adafuit.it/3295 - PCF8523 

sudo i2cdetect -y 1
# if i2cdetect retruns command  not found then install the set via 'sudo apt-get install python-smbus i2c-tools'
