#!/bin/bash

# installs-wifi.sh
#
# Gary Sone 16-Sep-2013,  Setting up a Raspberry Pi as a Wifi access point.
#
# see -- http://learn.adafruit.com/setting-up-a-raspberry-pi-as-a-wifi-access-point/install-software
#
# remember to chmod +x installs.sh (sudo su)
# to execute use ./installs.sh
#
# wget http://sone.net/installs-wifi.sh
#
# created in notepad on WintelPC so will need to (sed -i 's/\r//' filename) - use ^M for CR without LF


# create array of applications to be installed
# HT to ...
apps=(

hostapd
isc-dhcp-server

)

# apt-get update
sudo apt-get update

# Loop over apps and install each one with default 'yes' flag
for app in "${apps[@]}"
do
	sudo apt-get install $app -y
done

sudo nano /etc/dhcp/dhcpd.conf

sudo nano /etc/default/isc-dhcp-server

sudo ifconfig wlan0 192.168.42.1

sudo nano /etc/hostapd/hostapd.conf

sudo nano /etc/sysctl.conf

sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"

sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

sudo iptables -A FORWARD -i eth0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT

sudo iptables -A FORWARD -i wlan0 -o eth0 -j ACCEPT

sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"

sudo nano /etc/network/interfaces

sudo service hostapd start

sudo service isc-dhcp-server start

sudo update-rc.d hostapd enable

sudo update-rc.d isc-dhcp-server enable 

sudo mv /usr/share/dbus-1/system-services/fi.epitest.hostap.WPASupplicant.service ~/
