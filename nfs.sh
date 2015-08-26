#!/bin/bash -x
# ht - http://www.raspbian.org/RaspbianFAQ#How_do_I_mount_directories_from_other_Linux.2FUnix.2FBSD_servers.3F__How_do_I_mount_an_NFS_share.3F
# this file - enos.in/rpinfs
# wget -O - enos.in/rpinfs --no-check-certificate | bash
#

sudo apt-get update
sudo apt-get install -y nfs-common portmap
sudo service rpcbind start
sudo service rpcbind status
sudo update-rc.d rpcbind enable
sudo mkdir /mnt/nas
sudo mount -t nfs 192.168.1.64:/mnt/HD/HD_a2/Software /mnt/nas
# can use 'nfsstat -m' # to check status
# backup files with 'sudo cp /home/* . -r'

# edit /etc/fstab to mount on boot...
# /etc/fstab
# 192.168.1.64:/mnt/HD/HD_a2/Software /mnt/nas nfs
