#!/bin/bash -x
clear
umount /dev/mmcblk0p*
#sudo dcfldd bs=4M of=/dev/mmcblk0 if=2014-12-24-wheezy-raspbian.img
sudo dcfldd bs=4M of=/dev/mmcblk0 if=2015-01-31-raspbian.img
sudo sync
