#!/bin/bash                                                                                                                                 

echo Creating firewall rules.                                                                                                               
sudo iptables -A INPUT -p tcp --dport 4200 -s [internet.ip] -j ACCEPT                                                                     
sudo iptables -A INPUT -p tcp --dport 4200 -s [intranet.ip] -j ACCEPT                                                                      
sudo iptables -A INPUT -p tcp --dport 4200 -j DROP                                                                                          
#sudo iptables -D INPUT -p tcp --dport 4200 -j DROP
#iptables-save > /etc/iptablesv4.conf
#sudo nano /etc/rc.load #add following command
#iptables-restore < /etc/iptablesv4.conf
