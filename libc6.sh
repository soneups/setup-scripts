#!/bin/sh -v
# this *should* fix the issue when installing the citrix receiver on the Raspberry Pi 2 B
echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list
apt-get update
apt-get -t sid install libc6 libc6-dev libc6-dbg
echo "Please remember to hash out sid main from your sources list. /etc/apt/sources.list" # hint sudo nano /etc...
#sudo sed -i 's/deb http://ftp.debian.org/debian sid main/#deb http://ftp.debian.org/debian sid main/' /etc/apt/sources.list
