#!/bin/bash

# updategi.sh
#
# Gary Sone 1-Oct-2013,  Script to update git clones.
#
# create array of applications to be installed
# HT to ...
apps=(

https://github.com/CodeClub/scratch-curriculum
https://github.com/CodeClub/python-curriculum
https://github.com/CodeClub/webdev-curriculum

)

# apt-get update
#sudo apt-get update


for app in "${apps[@]}"
do
	cd $app
	sudo git fetch
	cd ..
done


#git config --global user.name ""
#git config --global user.email 
