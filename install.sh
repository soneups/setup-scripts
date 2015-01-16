#!/bin/bash -x

# installs.sh
#
# Gary Sone 16-Sep-2013,  RaspberryPi initial configuration script.
#
# v1.0
# Changelog, initial app array (git,screen,shellinabox) and two git-config lines.
#
# remember to chmod +x installs.sh (sudo su)
# to execute use ./installs.sh
#
# wget http://sone.net/installs.sh
# this file - https://github.com/soneups/setup-scripts/raw/master/install.sh
#
# created in notepad on WintelPC so will need to (sed -i 's/\r//' filename)


# create array of applications to be installed
# HT to ...
apps=(

git
screen
shellinabox

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
