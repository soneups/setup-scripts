#!/bin/bash -x

# installs.sh
#
# Gary Sone 16-Sep-2013,  RaspberryPi initial configuration script.
#
# v1.0 16-09-13 - initial app array (git,screen,shellinabox) and two git-config lines.
#
# remember to chmod +x installs.sh (sudo su) to execute use ./installs.sh
#
# this file - https://github.com/soneups/setup-scripts/raw/master/install.sh
# surl - enos.in/rpisetup
# wget -O - enos.in/rpisetup --no-check-certificate | bash
#
# If this file is created/edited in notepad type apps on WintelPC you will need to (sed -i 's/\r//' filename) on your linux box.


# create array of applications to be installed
# HT to ...
apps=(

git
screen
shellinabox
python-pip
rdesktop
filezilla
iceweasel

)

# apt-get update
sudo apt-get update

# Loop over apps and install each one with default 'yes' flag
for app in "${apps[@]}"
do
	sudo apt-get install $app -y
done

git config --global user.name ""
git config --global user.email ...

sudo pip install ntplib
# sudo sed -i 's/#disable_overscan=1/disable_overscan=1/' /boot/config.txt
# sudo apt-get remove wolfram*
# sudo apt-get remove epiphany*
# sudo apt-get remove sonic-pi
