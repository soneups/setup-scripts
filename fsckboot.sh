!#bin/bash -v
sudo umount /boot
sudo git clone http://daniel-baumann.ch/git/software/dosfstools.git
sudo cd dosfstools
sudo make
sudo make install
sudo ./fsck.fat -V /dev/mmcblk0p1
sudo ./fsck.fat -a /dev/mmcblk0p1
sudo mount /boot
